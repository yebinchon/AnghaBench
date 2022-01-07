
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_9__ {scalar_t__ integer; } ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {scalar_t__ integer; } ;
struct TYPE_6__ {int value; } ;


 int Com_Printf (char*,int) ;
 TYPE_5__* com_cameraMode ;
 TYPE_4__* com_dedicated ;
 TYPE_3__* com_fixedtime ;
 TYPE_2__* com_sv_running ;
 TYPE_1__* com_timescale ;

int Com_ModifyMsec( int msec ) {
 int clampTime;




 if ( com_fixedtime->integer ) {
  msec = com_fixedtime->integer;
 } else if ( com_timescale->value ) {
  msec *= com_timescale->value;
 } else if (com_cameraMode->integer) {
  msec *= com_timescale->value;
 }


 if ( msec < 1 && com_timescale->value) {
  msec = 1;
 }

 if ( com_dedicated->integer ) {



  if (com_sv_running->integer && msec > 500)
   Com_Printf( "Hitch warning: %i msec frame time\n", msec );

  clampTime = 5000;
 } else
 if ( !com_sv_running->integer ) {


  clampTime = 5000;
 } else {



  clampTime = 200;
 }

 if ( msec > clampTime ) {
  msec = clampTime;
 }

 return msec;
}
