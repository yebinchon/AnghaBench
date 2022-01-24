#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
struct TYPE_5__ {int buttons; int /*<<< orphan*/  rightmove; int /*<<< orphan*/  forwardmove; } ;
struct TYPE_8__ {int xyspeed; int waterlevel; int /*<<< orphan*/  noFootsteps; TYPE_2__* ps; TYPE_1__ cmd; } ;
struct TYPE_7__ {float msec; } ;
struct TYPE_6__ {int* velocity; scalar_t__ groundEntityNum; int bobCycle; int pm_flags; scalar_t__* powerups; } ;

/* Variables and functions */
 int BUTTON_WALKING ; 
 scalar_t__ ENTITYNUM_NONE ; 
 int /*<<< orphan*/  EV_FOOTSPLASH ; 
 int /*<<< orphan*/  EV_SWIM ; 
 int /*<<< orphan*/  LEGS_BACK ; 
 int /*<<< orphan*/  LEGS_BACKCR ; 
 int /*<<< orphan*/  LEGS_BACKWALK ; 
 int /*<<< orphan*/  LEGS_IDLE ; 
 int /*<<< orphan*/  LEGS_IDLECR ; 
 int /*<<< orphan*/  LEGS_RUN ; 
 int /*<<< orphan*/  LEGS_SWIM ; 
 int /*<<< orphan*/  LEGS_WALK ; 
 int /*<<< orphan*/  LEGS_WALKCR ; 
 int PMF_BACKWARDS_RUN ; 
 int PMF_DUCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t PW_INVULNERABILITY ; 
 TYPE_4__* pm ; 
 TYPE_3__ pml ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 int FUNC3 (int) ; 

__attribute__((used)) static void FUNC4( void ) {
	float		bobmove;
	int			old;
	qboolean	footstep;

	//
	// calculate speed and cycle to be used for
	// all cyclic walking effects
	//
	pm->xyspeed = FUNC3( pm->ps->velocity[0] * pm->ps->velocity[0]
		+  pm->ps->velocity[1] * pm->ps->velocity[1] );

	if ( pm->ps->groundEntityNum == ENTITYNUM_NONE ) {

		if ( pm->ps->powerups[PW_INVULNERABILITY] ) {
			FUNC1( LEGS_IDLECR );
		}
		// airborne leaves position in cycle intact, but doesn't advance
		if ( pm->waterlevel > 1 ) {
			FUNC1( LEGS_SWIM );
		}
		return;
	}

	// if not trying to move
	if ( !pm->cmd.forwardmove && !pm->cmd.rightmove ) {
		if (  pm->xyspeed < 5 ) {
			pm->ps->bobCycle = 0;	// start at beginning of cycle again
			if ( pm->ps->pm_flags & PMF_DUCKED ) {
				FUNC1( LEGS_IDLECR );
			} else {
				FUNC1( LEGS_IDLE );
			}
		}
		return;
	}
	

	footstep = qfalse;

	if ( pm->ps->pm_flags & PMF_DUCKED ) {
		bobmove = 0.5;	// ducked characters bob much faster
		if ( pm->ps->pm_flags & PMF_BACKWARDS_RUN ) {
			FUNC1( LEGS_BACKCR );
		}
		else {
			FUNC1( LEGS_WALKCR );
		}
		// ducked characters never play footsteps
	/*
	} else 	if ( pm->ps->pm_flags & PMF_BACKWARDS_RUN ) {
		if ( !( pm->cmd.buttons & BUTTON_WALKING ) ) {
			bobmove = 0.4;	// faster speeds bob faster
			footstep = qtrue;
		} else {
			bobmove = 0.3;
		}
		PM_ContinueLegsAnim( LEGS_BACK );
	*/
	} else {
		if ( !( pm->cmd.buttons & BUTTON_WALKING ) ) {
			bobmove = 0.4f;	// faster speeds bob faster
			if ( pm->ps->pm_flags & PMF_BACKWARDS_RUN ) {
				FUNC1( LEGS_BACK );
			}
			else {
				FUNC1( LEGS_RUN );
			}
			footstep = qtrue;
		} else {
			bobmove = 0.3f;	// walking bobs slow
			if ( pm->ps->pm_flags & PMF_BACKWARDS_RUN ) {
				FUNC1( LEGS_BACKWALK );
			}
			else {
				FUNC1( LEGS_WALK );
			}
		}
	}

	// check for footstep / splash sounds
	old = pm->ps->bobCycle;
	pm->ps->bobCycle = (int)( old + bobmove * pml.msec ) & 255;

	// if we just crossed a cycle boundary, play an appropriate footstep event
	if ( ( ( old + 64 ) ^ ( pm->ps->bobCycle + 64 ) ) & 128 ) {
		if ( pm->waterlevel == 0 ) {
			// on ground will only play sounds if running
			if ( footstep && !pm->noFootsteps ) {
				FUNC0( FUNC2() );
			}
		} else if ( pm->waterlevel == 1 ) {
			// splashing
			FUNC0( EV_FOOTSPLASH );
		} else if ( pm->waterlevel == 2 ) {
			// wading / swimming at surface
			FUNC0( EV_SWIM );
		} else if ( pm->waterlevel == 3 ) {
			// no sound when completely underwater

		}
	}
}