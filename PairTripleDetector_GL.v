//========================================================================
// PairTripleDetector_GL
//========================================================================

`ifndef PAIR_TRIPLE_DETECTOR_GL_V
`define PAIR_TRIPLE_DETECTOR_GL_V

`include "ece2300-misc.v"

module PairTripleDetector_GL
(
  input  wire in0,
  input  wire in1,
  input  wire in2,
  output wire out
 );

  wire w;
  wire y;
  wire x;

  and( x, in0, in1 );
  or ( w, in0, in1 );
  and( y, w, in2 );
  or ( out, y, x );

endmodule

`endif 

