
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buffer; int speed; int submission_chunk; scalar_t__ isfloat; int samplebits; int samples; scalar_t__ channels; } ;


 int Com_Printf (char*,...) ;
 TYPE_1__ dma ;
 int s_backgroundLoop ;
 scalar_t__ s_backgroundStream ;
 int s_soundStarted ;

void S_Base_SoundInfo(void) {
 Com_Printf("----- Sound Info -----\n" );
 if (!s_soundStarted) {
  Com_Printf ("sound system not started\n");
 } else {
  Com_Printf("%5d stereo\n", dma.channels - 1);
  Com_Printf("%5d samples\n", dma.samples);
  Com_Printf("%5d samplebits (%s)\n", dma.samplebits, dma.isfloat ? "float" : "int");
  Com_Printf("%5d submission_chunk\n", dma.submission_chunk);
  Com_Printf("%5d speed\n", dma.speed);
  Com_Printf("%p dma buffer\n", dma.buffer);
  if ( s_backgroundStream ) {
   Com_Printf("Background file: %s\n", s_backgroundLoop );
  } else {
   Com_Printf("No background file.\n" );
  }

 }
 Com_Printf("----------------------\n" );
}
