#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
struct TYPE_11__ {float forwardmove; float rightmove; } ;
typedef  TYPE_4__ usercmd_t ;
struct TYPE_13__ {int waterlevel; TYPE_3__* ps; TYPE_4__ cmd; } ;
struct TYPE_8__ {int /*<<< orphan*/  normal; } ;
struct TYPE_9__ {int surfaceFlags; TYPE_1__ plane; } ;
struct TYPE_12__ {float* forward; float* right; int frametime; TYPE_2__ groundTrace; } ;
struct TYPE_10__ {int pm_flags; float speed; float* velocity; int gravity; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (float*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OVERCLIP ; 
 int PMF_DUCKED ; 
 int PMF_TIME_KNOCKBACK ; 
 int /*<<< orphan*/  FUNC1 (float*,float,float) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (float*,int /*<<< orphan*/ ,float*,int /*<<< orphan*/ ) ; 
 float FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int SURF_SLICK ; 
 int /*<<< orphan*/  FUNC10 (float*,float*) ; 
 float FUNC11 (float*) ; 
 float FUNC12 (float*) ; 
 int /*<<< orphan*/  FUNC13 (float*,float,float*) ; 
 TYPE_6__* pm ; 
 float pm_accelerate ; 
 float pm_airaccelerate ; 
 float pm_duckScale ; 
 double pm_swimScale ; 
 TYPE_5__ pml ; 
 int /*<<< orphan*/  qfalse ; 

__attribute__((used)) static void FUNC14( void ) {
	int			i;
	vec3_t		wishvel;
	float		fmove, smove;
	vec3_t		wishdir;
	float		wishspeed;
	float		scale;
	usercmd_t	cmd;
	float		accelerate;
	float		vel;

	if ( pm->waterlevel > 2 && FUNC0( pml.forward, pml.groundTrace.plane.normal ) > 0 ) {
		// begin swimming
		FUNC9();
		return;
	}


	if ( FUNC3 () ) {
		// jumped away
		if ( pm->waterlevel > 1 ) {
			FUNC9();
		} else {
			FUNC2();
		}
		return;
	}

	FUNC6 ();

	fmove = pm->cmd.forwardmove;
	smove = pm->cmd.rightmove;

	cmd = pm->cmd;
	scale = FUNC5( &cmd );

	// set the movementDir so clients can rotate the legs for strafing
	FUNC7();

	// project moves down to flat plane
	pml.forward[2] = 0;
	pml.right[2] = 0;

	// project the forward and right directions onto the ground plane
	FUNC4 (pml.forward, pml.groundTrace.plane.normal, pml.forward, OVERCLIP );
	FUNC4 (pml.right, pml.groundTrace.plane.normal, pml.right, OVERCLIP );
	//
	FUNC12 (pml.forward);
	FUNC12 (pml.right);

	for ( i = 0 ; i < 3 ; i++ ) {
		wishvel[i] = pml.forward[i]*fmove + pml.right[i]*smove;
	}
	// when going up or down slopes the wish velocity should Not be zero
//	wishvel[2] = 0;

	FUNC10 (wishvel, wishdir);
	wishspeed = FUNC12(wishdir);
	wishspeed *= scale;

	// clamp the speed lower if ducking
	if ( pm->ps->pm_flags & PMF_DUCKED ) {
		if ( wishspeed > pm->ps->speed * pm_duckScale ) {
			wishspeed = pm->ps->speed * pm_duckScale;
		}
	}

	// clamp the speed lower if wading or walking on the bottom
	if ( pm->waterlevel ) {
		float	waterScale;

		waterScale = pm->waterlevel / 3.0;
		waterScale = 1.0 - ( 1.0 - pm_swimScale ) * waterScale;
		if ( wishspeed > pm->ps->speed * waterScale ) {
			wishspeed = pm->ps->speed * waterScale;
		}
	}

	// when a player gets hit, they temporarily lose
	// full control, which allows them to be moved a bit
	if ( ( pml.groundTrace.surfaceFlags & SURF_SLICK ) || pm->ps->pm_flags & PMF_TIME_KNOCKBACK ) {
		accelerate = pm_airaccelerate;
	} else {
		accelerate = pm_accelerate;
	}

	FUNC1 (wishdir, wishspeed, accelerate);

	//Com_Printf("velocity = %1.1f %1.1f %1.1f\n", pm->ps->velocity[0], pm->ps->velocity[1], pm->ps->velocity[2]);
	//Com_Printf("velocity1 = %1.1f\n", VectorLength(pm->ps->velocity));

	if ( ( pml.groundTrace.surfaceFlags & SURF_SLICK ) || pm->ps->pm_flags & PMF_TIME_KNOCKBACK ) {
		pm->ps->velocity[2] -= pm->ps->gravity * pml.frametime;
	} else {
		// don't reset the z velocity for slopes
//		pm->ps->velocity[2] = 0;
	}

	vel = FUNC11(pm->ps->velocity);

	// slide along the ground plane
	FUNC4 (pm->ps->velocity, pml.groundTrace.plane.normal, 
		pm->ps->velocity, OVERCLIP );

	// don't decrease velocity when going up or down a slope
	FUNC12(pm->ps->velocity);
	FUNC13(pm->ps->velocity, vel, pm->ps->velocity);

	// don't do anything if standing still
	if (!pm->ps->velocity[0] && !pm->ps->velocity[1]) {
		return;
	}

	FUNC8( qfalse );

	//Com_Printf("velocity2 = %1.1f\n", VectorLength(pm->ps->velocity));

}