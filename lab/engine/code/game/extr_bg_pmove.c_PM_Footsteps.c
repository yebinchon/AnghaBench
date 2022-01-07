
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_5__ {int buttons; int rightmove; int forwardmove; } ;
struct TYPE_8__ {int xyspeed; int waterlevel; int noFootsteps; TYPE_2__* ps; TYPE_1__ cmd; } ;
struct TYPE_7__ {float msec; } ;
struct TYPE_6__ {int* velocity; scalar_t__ groundEntityNum; int bobCycle; int pm_flags; scalar_t__* powerups; } ;


 int BUTTON_WALKING ;
 scalar_t__ ENTITYNUM_NONE ;
 int EV_FOOTSPLASH ;
 int EV_SWIM ;
 int LEGS_BACK ;
 int LEGS_BACKCR ;
 int LEGS_BACKWALK ;
 int LEGS_IDLE ;
 int LEGS_IDLECR ;
 int LEGS_RUN ;
 int LEGS_SWIM ;
 int LEGS_WALK ;
 int LEGS_WALKCR ;
 int PMF_BACKWARDS_RUN ;
 int PMF_DUCKED ;
 int PM_AddEvent (int ) ;
 int PM_ContinueLegsAnim (int ) ;
 int PM_FootstepForSurface () ;
 size_t PW_INVULNERABILITY ;
 TYPE_4__* pm ;
 TYPE_3__ pml ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 int sqrt (int) ;

__attribute__((used)) static void PM_Footsteps( void ) {
 float bobmove;
 int old;
 qboolean footstep;





 pm->xyspeed = sqrt( pm->ps->velocity[0] * pm->ps->velocity[0]
  + pm->ps->velocity[1] * pm->ps->velocity[1] );

 if ( pm->ps->groundEntityNum == ENTITYNUM_NONE ) {

  if ( pm->ps->powerups[PW_INVULNERABILITY] ) {
   PM_ContinueLegsAnim( LEGS_IDLECR );
  }

  if ( pm->waterlevel > 1 ) {
   PM_ContinueLegsAnim( LEGS_SWIM );
  }
  return;
 }


 if ( !pm->cmd.forwardmove && !pm->cmd.rightmove ) {
  if ( pm->xyspeed < 5 ) {
   pm->ps->bobCycle = 0;
   if ( pm->ps->pm_flags & PMF_DUCKED ) {
    PM_ContinueLegsAnim( LEGS_IDLECR );
   } else {
    PM_ContinueLegsAnim( LEGS_IDLE );
   }
  }
  return;
 }


 footstep = qfalse;

 if ( pm->ps->pm_flags & PMF_DUCKED ) {
  bobmove = 0.5;
  if ( pm->ps->pm_flags & PMF_BACKWARDS_RUN ) {
   PM_ContinueLegsAnim( LEGS_BACKCR );
  }
  else {
   PM_ContinueLegsAnim( LEGS_WALKCR );
  }
 } else {
  if ( !( pm->cmd.buttons & BUTTON_WALKING ) ) {
   bobmove = 0.4f;
   if ( pm->ps->pm_flags & PMF_BACKWARDS_RUN ) {
    PM_ContinueLegsAnim( LEGS_BACK );
   }
   else {
    PM_ContinueLegsAnim( LEGS_RUN );
   }
   footstep = qtrue;
  } else {
   bobmove = 0.3f;
   if ( pm->ps->pm_flags & PMF_BACKWARDS_RUN ) {
    PM_ContinueLegsAnim( LEGS_BACKWALK );
   }
   else {
    PM_ContinueLegsAnim( LEGS_WALK );
   }
  }
 }


 old = pm->ps->bobCycle;
 pm->ps->bobCycle = (int)( old + bobmove * pml.msec ) & 255;


 if ( ( ( old + 64 ) ^ ( pm->ps->bobCycle + 64 ) ) & 128 ) {
  if ( pm->waterlevel == 0 ) {

   if ( footstep && !pm->noFootsteps ) {
    PM_AddEvent( PM_FootstepForSurface() );
   }
  } else if ( pm->waterlevel == 1 ) {

   PM_AddEvent( EV_FOOTSPLASH );
  } else if ( pm->waterlevel == 2 ) {

   PM_AddEvent( EV_SWIM );
  } else if ( pm->waterlevel == 3 ) {


  }
 }
}
