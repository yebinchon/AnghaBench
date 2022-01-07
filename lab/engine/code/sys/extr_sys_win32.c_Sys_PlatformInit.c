
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ptc ;
struct TYPE_3__ {int wPeriodMin; } ;
typedef TYPE_1__ TIMECAPS ;


 int Com_Printf (char*,int) ;
 scalar_t__ MMSYSERR_NOERROR ;
 int Sys_SetFloatEnv () ;
 int timeBeginPeriod (int) ;
 scalar_t__ timeGetDevCaps (TYPE_1__*,int) ;
 int timerResolution ;

void Sys_PlatformInit( void )
{

 TIMECAPS ptc;


 Sys_SetFloatEnv();


 if(timeGetDevCaps(&ptc, sizeof(ptc)) == MMSYSERR_NOERROR)
 {
  timerResolution = ptc.wPeriodMin;

  if(timerResolution > 1)
  {
   Com_Printf("Warning: Minimum supported timer resolution is %ums "
    "on this system, recommended resolution 1ms\n", timerResolution);
  }

  timeBeginPeriod(timerResolution);
 }
 else
  timerResolution = 0;

}
