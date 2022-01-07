
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int data ;
typedef int byte ;
struct TYPE_2__ {float speed; } ;


 int LittleShort (short) ;
 TYPE_1__ dma ;

__attribute__((used)) static int ResampleSfxRaw( short *sfx, int channels, int inrate, int inwidth, int samples, byte *data ) {
 int outcount;
 int srcsample;
 float stepscale;
 int i, j;
 int sample, samplefrac, fracstep;

 stepscale = (float)inrate / dma.speed;

 outcount = samples / stepscale;

 srcsample = 0;
 samplefrac = 0;
 fracstep = stepscale * 256 * channels;

 for (i=0 ; i<outcount ; i++)
 {
  srcsample += samplefrac >> 8;
  samplefrac &= 255;
  samplefrac += fracstep;
  for (j=0 ; j<channels ; j++)
  {
   if( inwidth == 2 ) {
    sample = LittleShort ( ((short *)data)[srcsample+j] );
   } else {
    sample = (int)( (unsigned char)(data[srcsample+j]) - 128) << 8;
   }
   sfx[i*channels+j] = sample;
  }
 }
 return outcount;
}
