
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {short* angles; } ;
typedef TYPE_1__ usercmd_t ;
struct TYPE_6__ {scalar_t__ pm_type; scalar_t__* stats; short* delta_angles; int * viewangles; } ;
typedef TYPE_2__ playerState_t ;


 int PITCH ;
 scalar_t__ PM_INTERMISSION ;
 scalar_t__ PM_SPECTATOR ;
 scalar_t__ PM_SPINTERMISSION ;
 int SHORT2ANGLE (short) ;
 size_t STAT_HEALTH ;

void PM_UpdateViewAngles( playerState_t *ps, const usercmd_t *cmd ) {
 short temp;
 int i;

 if ( ps->pm_type == PM_INTERMISSION || ps->pm_type == PM_SPINTERMISSION) {
  return;
 }

 if ( ps->pm_type != PM_SPECTATOR && ps->stats[STAT_HEALTH] <= 0 ) {
  return;
 }


 for (i=0 ; i<3 ; i++) {
  temp = cmd->angles[i] + ps->delta_angles[i];
  if ( i == PITCH ) {

   if ( temp > 16000 ) {
    ps->delta_angles[i] = 16000 - cmd->angles[i];
    temp = 16000;
   } else if ( temp < -16000 ) {
    ps->delta_angles[i] = -16000 - cmd->angles[i];
    temp = -16000;
   }
  }
  ps->viewangles[i] = SHORT2ANGLE(temp);
 }

}
