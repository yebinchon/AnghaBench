
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_22__ {int integer; } ;
struct TYPE_21__ {scalar_t__ integer; } ;
struct TYPE_20__ {scalar_t__ state; int timeDemoStart; int timeDemoLastFrame; int timeDemoMinDuration; int timeDemoMaxDuration; int timeDemoFrames; int* timeDemoDurations; int timeDemoBaseTime; scalar_t__ demoplaying; void* firstDemoFrameSkipped; } ;
struct TYPE_19__ {int realtime; } ;
struct TYPE_18__ {scalar_t__ integer; } ;
struct TYPE_15__ {int (* set_map_finished ) (int ,void*) ;} ;
struct TYPE_17__ {int userdata; TYPE_2__ hooks; } ;
struct TYPE_16__ {scalar_t__ integer; } ;
struct TYPE_14__ {int serverTime; int valid; } ;
struct TYPE_13__ {int oldFrameServerTime; int serverTime; int serverTimeDelta; int oldServerTime; TYPE_1__ snap; scalar_t__ newSnapshots; void* extrapolatedSnapshot; } ;
struct TYPE_12__ {scalar_t__ integer; } ;


 scalar_t__ CA_ACTIVE ;
 scalar_t__ CA_PRIMED ;
 int CL_AdjustTimeDelta () ;
 scalar_t__ CL_CheckPaused () ;
 int CL_FirstSnapshot () ;
 int CL_ReadDemoMessage () ;
 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 int INT_MAX ;
 int MAX_TIMEDEMO_DURATIONS ;
 int Sys_Milliseconds () ;
 int UCHAR_MAX ;
 TYPE_11__ cl ;
 TYPE_10__* cl_freezeDemo ;
 TYPE_9__* cl_timeNudge ;
 TYPE_8__* cl_timedemo ;
 TYPE_7__ clc ;
 TYPE_6__ cls ;
 TYPE_5__* com_sv_running ;
 TYPE_4__* dmlab_context () ;
 scalar_t__ qfalse ;
 void* qtrue ;
 int stub1 (int ,void*) ;
 TYPE_3__* sv_paused ;

void CL_SetCGameTime( void ) {

 if ( clc.state != CA_ACTIVE ) {
  if ( clc.state != CA_PRIMED ) {
   return;
  }
  if ( clc.demoplaying ) {


   if ( !clc.firstDemoFrameSkipped ) {
    clc.firstDemoFrameSkipped = qtrue;
    return;
   }
   CL_ReadDemoMessage();
  }
  if ( cl.newSnapshots ) {
   cl.newSnapshots = qfalse;
   CL_FirstSnapshot();
  }
  if ( clc.state != CA_ACTIVE ) {
   return;
  }
 }


 if ( !cl.snap.valid ) {
  Com_Error( ERR_DROP, "CL_SetCGameTime: !cl.snap.valid" );
 }


 if ( sv_paused->integer && CL_CheckPaused() && com_sv_running->integer ) {

  return;
 }

 if ( cl.snap.serverTime < cl.oldFrameServerTime ) {
  Com_Error( ERR_DROP, "cl.snap.serverTime < cl.oldFrameServerTime" );
 }
 cl.oldFrameServerTime = cl.snap.serverTime;




 if ( clc.demoplaying && cl_freezeDemo->integer ) {


 } else {



  int tn;

  tn = cl_timeNudge->integer;
  if (tn<-30) {
   tn = -30;
  } else if (tn>30) {
   tn = 30;
  }

  cl.serverTime = cls.realtime + cl.serverTimeDelta - tn;



  if ( cl.serverTime < cl.oldServerTime ) {
   cl.serverTime = cl.oldServerTime;
  }
  cl.oldServerTime = cl.serverTime;



  if ( cls.realtime + cl.serverTimeDelta >= cl.snap.serverTime - 5 ) {
   cl.extrapolatedSnapshot = qtrue;
  }
 }




 if ( cl.newSnapshots ) {
  CL_AdjustTimeDelta();
 }

 if ( !clc.demoplaying ) {
  return;
 }
 if ( cl_timedemo->integer ) {
  int now = Sys_Milliseconds( );
  int frameDuration;

  if (!clc.timeDemoStart) {
   clc.timeDemoStart = clc.timeDemoLastFrame = now;
   clc.timeDemoMinDuration = INT_MAX;
   clc.timeDemoMaxDuration = 0;
  }

  frameDuration = now - clc.timeDemoLastFrame;
  clc.timeDemoLastFrame = now;


  if( clc.timeDemoFrames > 0 )
  {
   if( frameDuration > clc.timeDemoMaxDuration )
    clc.timeDemoMaxDuration = frameDuration;

   if( frameDuration < clc.timeDemoMinDuration )
    clc.timeDemoMinDuration = frameDuration;


   if( frameDuration > UCHAR_MAX )
    frameDuration = UCHAR_MAX;

   clc.timeDemoDurations[ ( clc.timeDemoFrames - 1 ) %
    MAX_TIMEDEMO_DURATIONS ] = frameDuration;
  }

  clc.timeDemoFrames++;
  cl.serverTime = clc.timeDemoBaseTime + clc.timeDemoFrames * 50;
 }

 while ( cl.serverTime >= cl.snap.serverTime ) {


  CL_ReadDemoMessage();
  if ( clc.state != CA_ACTIVE ) {
   dmlab_context()->hooks.set_map_finished(dmlab_context()->userdata, qtrue);
   return;
  }
 }

}
