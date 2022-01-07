
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; scalar_t__ sndChunk; } ;
typedef TYPE_1__ sndBuffer ;
typedef size_t byte ;


 float* mulawToShort ;
 int wt1 (float*,int,int) ;

void decodeWavelet(sndBuffer *chunk, short *to) {
 float wksp[4097] = {0};
 int i;
 byte *out;

 int size = chunk->size;

 out = (byte *)chunk->sndChunk;
 for(i=0;i<size;i++) {
  wksp[i] = mulawToShort[out[i]];
 }

 wt1(wksp, size, -1);

 if (!to) return;

 for(i=0; i<size; i++) {
  to[i] = wksp[i];
 }
}
