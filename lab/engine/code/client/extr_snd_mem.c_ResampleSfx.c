
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int* sndChunk; struct TYPE_6__* next; } ;
typedef TYPE_1__ sndBuffer ;
struct TYPE_7__ {TYPE_1__* soundData; } ;
typedef TYPE_2__ sfx_t ;
typedef int qboolean ;
typedef int data ;
typedef int byte ;
struct TYPE_8__ {float speed; } ;


 int SND_CHUNK_SIZE ;
 TYPE_1__* SND_malloc () ;
 TYPE_3__ dma ;

__attribute__((used)) static int ResampleSfx( sfx_t *sfx, int channels, int inrate, int inwidth, int samples, byte *data, qboolean compressed ) {
 int outcount;
 int srcsample;
 float stepscale;
 int i, j;
 int sample, samplefrac, fracstep;
 int part;
 sndBuffer *chunk;

 stepscale = (float)inrate / dma.speed;

 outcount = samples / stepscale;

 srcsample = 0;
 samplefrac = 0;
 fracstep = stepscale * 256 * channels;
 chunk = sfx->soundData;

 for (i=0 ; i<outcount ; i++)
 {
  srcsample += samplefrac >> 8;
  samplefrac &= 255;
  samplefrac += fracstep;
  for (j=0 ; j<channels ; j++)
  {
   if( inwidth == 2 ) {
    sample = ( ((short *)data)[srcsample+j] );
   } else {
    sample = (unsigned int)( (unsigned char)(data[srcsample+j]) - 128) << 8;
   }
   part = (i*channels+j)&(SND_CHUNK_SIZE-1);
   if (part == 0) {
    sndBuffer *newchunk;
    newchunk = SND_malloc();
    if (chunk == ((void*)0)) {
     sfx->soundData = newchunk;
    } else {
     chunk->next = newchunk;
    }
    chunk = newchunk;
   }

   chunk->sndChunk[part] = sample;
  }
 }

 return outcount;
}
