
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adpcm_state {int sample; int index; } ;


 scalar_t__* indexTable ;
 int* stepsizeTable ;

void S_AdpcmDecode( const char indata[], short *outdata, int len, struct adpcm_state *state ) {
    signed char *inp;
    int outp;
    int sign;
    int delta;
    int step;
    int valpred;
    int vpdiff;
    int index;
    int inputbuffer;
    int bufferstep;

    outp = 0;
    inp = (signed char *)indata;

    valpred = state->sample;
    index = state->index;
    step = stepsizeTable[index];

    bufferstep = 0;
    inputbuffer = 0;
    for ( ; len > 0 ; len-- ) {


  if ( bufferstep ) {
   delta = inputbuffer & 0xf;
  } else {
   inputbuffer = *inp++;
   delta = (inputbuffer >> 4) & 0xf;
  }
  bufferstep = !bufferstep;


  index += indexTable[delta];
  if ( index < 0 ) index = 0;
  if ( index > 88 ) index = 88;


  sign = delta & 8;
  delta = delta & 7;






  vpdiff = step >> 3;
  if ( delta & 4 ) vpdiff += step;
  if ( delta & 2 ) vpdiff += step>>1;
  if ( delta & 1 ) vpdiff += step>>2;

  if ( sign )
    valpred -= vpdiff;
  else
    valpred += vpdiff;


  if ( valpred > 32767 )
    valpred = 32767;
  else if ( valpred < -32768 )
    valpred = -32768;


  step = stepsizeTable[index];


  outdata[outp] = valpred;
  outp++;
    }

    state->sample = valpred;
    state->index = index;
}
