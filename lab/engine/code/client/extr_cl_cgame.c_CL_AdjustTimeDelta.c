
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int serverTime; } ;
struct TYPE_12__ {int serverTimeDelta; int oldServerTime; int serverTime; void* extrapolatedSnapshot; TYPE_1__ snap; void* newSnapshots; } ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {scalar_t__ demoplaying; } ;
struct TYPE_9__ {int realtime; } ;
struct TYPE_8__ {int value; } ;


 int Com_Printf (char*,...) ;
 int RESET_TIME ;
 int abs (int) ;
 TYPE_6__ cl ;
 TYPE_5__* cl_showTimeDelta ;
 TYPE_4__ clc ;
 TYPE_3__ cls ;
 TYPE_2__* com_timescale ;
 void* qfalse ;

void CL_AdjustTimeDelta( void ) {
 int newDelta;
 int deltaDelta;

 cl.newSnapshots = qfalse;


 if ( clc.demoplaying ) {
  return;
 }

 newDelta = cl.snap.serverTime - cls.realtime;
 deltaDelta = abs( newDelta - cl.serverTimeDelta );

 if ( deltaDelta > RESET_TIME ) {
  cl.serverTimeDelta = newDelta;
  cl.oldServerTime = cl.snap.serverTime;
  cl.serverTime = cl.snap.serverTime;
  if ( cl_showTimeDelta->integer ) {
   Com_Printf( "<RESET> " );
  }
 } else if ( deltaDelta > 100 ) {

  if ( cl_showTimeDelta->integer ) {
   Com_Printf( "<FAST> " );
  }
  cl.serverTimeDelta = ( cl.serverTimeDelta + newDelta ) >> 1;
 } else {





  if ( com_timescale->value == 0 || com_timescale->value == 1 ) {
   if ( cl.extrapolatedSnapshot ) {
    cl.extrapolatedSnapshot = qfalse;
    cl.serverTimeDelta -= 2;
   } else {

    cl.serverTimeDelta++;
   }
  }
 }

 if ( cl_showTimeDelta->integer ) {
  Com_Printf( "%i ", cl.serverTimeDelta );
 }
}
