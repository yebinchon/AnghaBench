
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int msec; void* downtime; scalar_t__ active; } ;
typedef TYPE_1__ kbutton_t ;


 int Com_Printf (char*,int) ;
 void* com_frameTime ;
 float frame_msec ;

float CL_KeyState( kbutton_t *key ) {
 float val;
 int msec;

 msec = key->msec;
 key->msec = 0;

 if ( key->active ) {

  if ( !key->downtime ) {
   msec = com_frameTime;
  } else {
   msec += com_frameTime - key->downtime;
  }
  key->downtime = com_frameTime;
 }







 val = (float)msec / frame_msec;
 if ( val < 0 ) {
  val = 0;
 }
 if ( val > 1 ) {
  val = 1;
 }

 return val;
}
