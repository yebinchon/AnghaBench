
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int value; } ;
struct TYPE_7__ {float aviSoundFrameRemainder; } ;
struct TYPE_6__ {int samples; int channels; float speed; int submission_chunk; } ;
struct TYPE_5__ {int value; } ;


 scalar_t__ CL_VideoRecording () ;
 int Com_DPrintf (char*) ;
 float MAX (float,float) ;
 float MIN (int ,float) ;
 int SNDDMA_GetDMAPos () ;
 int S_Base_StopAllSounds () ;
 TYPE_4__* cl_aviFrameRate ;
 TYPE_3__ clc ;
 TYPE_2__ dma ;
 TYPE_1__* s_mixPreStep ;
 int s_paintedtime ;
 int s_soundtime ;

void S_GetSoundtime(void)
{
 int samplepos;
 static int buffers;
 static int oldsamplepos;
 int fullsamples;

 fullsamples = dma.samples / dma.channels;

 if( CL_VideoRecording( ) )
 {
  float fps = MIN(cl_aviFrameRate->value, 1000.0f);
  float frameDuration = MAX(dma.speed / fps, 1.0f) + clc.aviSoundFrameRemainder;

  int msec = (int)frameDuration;
  s_soundtime += msec;
  clc.aviSoundFrameRemainder = frameDuration - msec;

  return;
 }



 samplepos = SNDDMA_GetDMAPos();
 if (samplepos < oldsamplepos)
 {
  buffers++;

  if (s_paintedtime > 0x40000000)
  {
   buffers = 0;
   s_paintedtime = fullsamples;
   S_Base_StopAllSounds ();
  }
 }
 oldsamplepos = samplepos;

 s_soundtime = buffers*fullsamples + samplepos/dma.channels;
 if ( dma.submission_chunk < 256 ) {
  s_paintedtime = s_soundtime + s_mixPreStep->value * dma.speed;
 } else {
  s_paintedtime = s_soundtime + dma.submission_chunk;
 }
}
