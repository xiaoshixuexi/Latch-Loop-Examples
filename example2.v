module top(clk1, inp, outp);
    input clk1, inp;
    output outp;

    wire [6:0] w;

    NAND2X1 nandg0(.A(inp), .B(w[4]), .Y(w[0]));
    LATCH latcha0(.D(w[0]), .Q(w[1]), .CLK(clk1)); 
    LATCH latchb0(.D(w[1]), .Q(w[2]), .CLK(clk1)); 
    LATCH latchc0(.D(w[2]), .Q(w[3]), .CLK(clk1)); 
    LATCH latchd0(.D(w[3]), .Q(w[4]), .CLK(clk1));

    endmodule