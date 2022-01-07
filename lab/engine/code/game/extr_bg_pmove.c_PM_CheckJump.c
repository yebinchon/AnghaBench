
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* qboolean ;
struct TYPE_5__ {int upmove; scalar_t__ forwardmove; } ;
struct TYPE_8__ {TYPE_2__* ps; TYPE_1__ cmd; } ;
struct TYPE_7__ {void* walking; void* groundPlane; } ;
struct TYPE_6__ {int pm_flags; int * velocity; int groundEntityNum; } ;


 int ENTITYNUM_NONE ;
 int EV_JUMP ;
 int JUMP_VELOCITY ;
 int LEGS_JUMP ;
 int LEGS_JUMPB ;
 int PMF_BACKWARDS_JUMP ;
 int PMF_JUMP_HELD ;
 int PMF_RESPAWNED ;
 int PM_AddEvent (int ) ;
 int PM_ForceLegsAnim (int ) ;
 TYPE_4__* pm ;
 TYPE_3__ pml ;
 void* qfalse ;
 void* qtrue ;

__attribute__((used)) static qboolean PM_CheckJump( void ) {
 if ( pm->ps->pm_flags & PMF_RESPAWNED ) {
  return qfalse;
 }

 if ( pm->cmd.upmove < 10 ) {

  return qfalse;
 }


 if ( pm->ps->pm_flags & PMF_JUMP_HELD ) {

  pm->cmd.upmove = 0;
  return qfalse;
 }

 pml.groundPlane = qfalse;
 pml.walking = qfalse;
 pm->ps->pm_flags |= PMF_JUMP_HELD;

 pm->ps->groundEntityNum = ENTITYNUM_NONE;
 pm->ps->velocity[2] = JUMP_VELOCITY;
 PM_AddEvent( EV_JUMP );

 if ( pm->cmd.forwardmove >= 0 ) {
  PM_ForceLegsAnim( LEGS_JUMP );
  pm->ps->pm_flags &= ~PMF_BACKWARDS_JUMP;
 } else {
  PM_ForceLegsAnim( LEGS_JUMPB );
  pm->ps->pm_flags |= PMF_BACKWARDS_JUMP;
 }

 return qtrue;
}
