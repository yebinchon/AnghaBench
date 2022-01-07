
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int * vec3_t ;
struct TYPE_6__ {scalar_t__ pm_type; scalar_t__ jumppad_ent; int velocity; int pmove_framecount; int jumppad_frame; scalar_t__* powerups; } ;
typedef TYPE_1__ playerState_t ;
struct TYPE_7__ {scalar_t__ number; int origin2; } ;
typedef TYPE_2__ entityState_t ;


 int AngleNormalize180 (int ) ;
 int BG_AddPredictableEventToPlayerstate (int ,int,TYPE_1__*) ;
 int EV_JUMP_PAD ;
 size_t PITCH ;
 scalar_t__ PM_NORMAL ;
 size_t PW_FLIGHT ;
 int VectorCopy (int ,int ) ;
 float fabs (int ) ;
 int vectoangles (int ,int *) ;

void BG_TouchJumpPad( playerState_t *ps, entityState_t *jumppad ) {
 vec3_t angles;
 float p;
 int effectNum;


 if ( ps->pm_type != PM_NORMAL ) {
  return;
 }


 if ( ps->powerups[PW_FLIGHT] ) {
  return;
 }



 if ( ps->jumppad_ent != jumppad->number ) {

  vectoangles( jumppad->origin2, angles);
  p = fabs( AngleNormalize180( angles[PITCH] ) );
  if( p < 45 ) {
   effectNum = 0;
  } else {
   effectNum = 1;
  }
  BG_AddPredictableEventToPlayerstate( EV_JUMP_PAD, effectNum, ps );
 }

 ps->jumppad_ent = jumppad->number;
 ps->jumppad_frame = ps->pmove_framecount;

 VectorCopy( jumppad->origin2, ps->velocity );
}
