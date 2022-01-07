
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float samples; scalar_t__ rate; } ;
typedef TYPE_1__ wavinfo_t ;
typedef int adpcm_state_t ;
struct TYPE_5__ {float speed; } ;


 int PAINTBUFFER_SIZE ;
 TYPE_2__ dma ;

int S_AdpcmMemoryNeeded( const wavinfo_t *info ) {
 float scale;
 int scaledSampleCount;
 int sampleMemory;
 int blockCount;
 int headerMemory;


 scale = (float)info->rate / dma.speed;


 scaledSampleCount = info->samples / scale;


 sampleMemory = scaledSampleCount / 2;


 blockCount = scaledSampleCount / PAINTBUFFER_SIZE;
 if( scaledSampleCount % PAINTBUFFER_SIZE ) {
  blockCount++;
 }


 headerMemory = blockCount * sizeof(adpcm_state_t);

 return sampleMemory + headerMemory;
}
