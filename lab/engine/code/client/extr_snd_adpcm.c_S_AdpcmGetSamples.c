
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sample; int index; } ;
struct TYPE_7__ {scalar_t__ sndChunk; TYPE_1__ adpcm; } ;
typedef TYPE_2__ sndBuffer ;
typedef int byte ;
struct TYPE_8__ {int sample; int index; } ;
typedef TYPE_3__ adpcm_state_t ;


 int SND_CHUNK_SIZE_BYTE ;
 int S_AdpcmDecode (char*,short*,int,TYPE_3__*) ;

void S_AdpcmGetSamples(sndBuffer *chunk, short *to) {
 adpcm_state_t state;
 byte *out;


 state.index = chunk->adpcm.index;
 state.sample = chunk->adpcm.sample;

 out = (byte *)chunk->sndChunk;

 S_AdpcmDecode((char *) out, to, SND_CHUNK_SIZE_BYTE*2, &state );
}
