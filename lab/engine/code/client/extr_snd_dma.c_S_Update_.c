
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {float speed; unsigned int submission_chunk; int samples; int channels; } ;
struct TYPE_5__ {float value; } ;
struct TYPE_4__ {float value; } ;


 float Com_Milliseconds () ;
 int SNDDMA_BeginPainting () ;
 int SNDDMA_Submit () ;
 int S_GetSoundtime () ;
 int S_PaintChannels (unsigned int) ;
 int S_ScanChannelStarts () ;
 TYPE_3__ dma ;
 TYPE_2__* s_mixPreStep ;
 TYPE_1__* s_mixahead ;
 scalar_t__ s_soundMuted ;
 int s_soundStarted ;
 int s_soundtime ;

void S_Update_(void) {
 unsigned endtime;
 int samps;
 static float lastTime = 0.0f;
 float ma, op;
 float thisTime, sane;
 static int ot = -1;

 if ( !s_soundStarted || s_soundMuted ) {
  return;
 }

 thisTime = Com_Milliseconds();


 S_GetSoundtime();

 if (s_soundtime == ot) {
  return;
 }
 ot = s_soundtime;



 S_ScanChannelStarts();

 sane = thisTime - lastTime;
 if (sane<11) {
  sane = 11;
 }

 ma = s_mixahead->value * dma.speed;
 op = s_mixPreStep->value + sane*dma.speed*0.01;

 if (op < ma) {
  ma = op;
 }


 endtime = s_soundtime + ma;


 endtime = (endtime + dma.submission_chunk-1)
  & ~(dma.submission_chunk-1);


 samps = dma.samples >> (dma.channels-1);
 if (endtime - s_soundtime > samps)
  endtime = s_soundtime + samps;



 SNDDMA_BeginPainting ();

 S_PaintChannels (endtime);

 SNDDMA_Submit ();

 lastTime = thisTime;
}
