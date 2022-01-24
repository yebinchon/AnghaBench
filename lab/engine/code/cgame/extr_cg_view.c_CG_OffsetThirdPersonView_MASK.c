#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_11__ {double fraction; int* endpos; } ;
typedef  TYPE_3__ trace_t ;
struct TYPE_10__ {int* vieworg; } ;
struct TYPE_9__ {scalar_t__* stats; int /*<<< orphan*/  clientNum; scalar_t__ viewheight; } ;
struct TYPE_15__ {int* refdefViewAngles; TYPE_2__ refdef; TYPE_1__ predictedPlayerState; } ;
struct TYPE_14__ {int /*<<< orphan*/  integer; } ;
struct TYPE_13__ {int value; } ;
struct TYPE_12__ {float value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int*,int*,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FOCUS_DISTANCE ; 
 int /*<<< orphan*/  MASK_SOLID ; 
 int M_PI ; 
 size_t PITCH ; 
 size_t STAT_DEAD_YAW ; 
 size_t STAT_HEALTH ; 
 int /*<<< orphan*/  FUNC2 (int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,float,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int*) ; 
 size_t YAW ; 
 int FUNC5 (int,float) ; 
 TYPE_7__ cg ; 
 TYPE_6__ cg_cameraMode ; 
 TYPE_5__ cg_thirdPersonAngle ; 
 TYPE_4__ cg_thirdPersonRange ; 
 float FUNC6 (int) ; 
 float FUNC7 (int) ; 
 float FUNC8 (int) ; 

__attribute__((used)) static void FUNC9( void ) {
	vec3_t		forward, right, up;
	vec3_t		view;
	vec3_t		focusAngles;
	trace_t		trace;
	static vec3_t	mins = { -4, -4, -4 };
	static vec3_t	maxs = { 4, 4, 4 };
	vec3_t		focusPoint;
	float		focusDist;
	float		forwardScale, sideScale;

	cg.refdef.vieworg[2] += cg.predictedPlayerState.viewheight;

	FUNC2( cg.refdefViewAngles, focusAngles );

	// if dead, look at killer
	if ( cg.predictedPlayerState.stats[STAT_HEALTH] <= 0 ) {
		focusAngles[YAW] = cg.predictedPlayerState.stats[STAT_DEAD_YAW];
		cg.refdefViewAngles[YAW] = cg.predictedPlayerState.stats[STAT_DEAD_YAW];
	}

	if ( focusAngles[PITCH] > 45 ) {
		focusAngles[PITCH] = 45;		// don't go too far overhead
	}
	FUNC0( focusAngles, forward, NULL, NULL );

	FUNC3( cg.refdef.vieworg, FOCUS_DISTANCE, forward, focusPoint );

	FUNC2( cg.refdef.vieworg, view );

	view[2] += 8;

	cg.refdefViewAngles[PITCH] *= 0.5;

	FUNC0( cg.refdefViewAngles, forward, right, up );

	forwardScale = FUNC6( cg_thirdPersonAngle.value / 180 * M_PI );
	sideScale = FUNC7( cg_thirdPersonAngle.value / 180 * M_PI );
	FUNC3( view, -cg_thirdPersonRange.value * forwardScale, forward, view );
	FUNC3( view, -cg_thirdPersonRange.value * sideScale, right, view );

	// trace a ray from the origin to the viewpoint to make sure the view isn't
	// in a solid block.  Use an 8 by 8 block to prevent the view from near clipping anything

	if (!cg_cameraMode.integer) {
		FUNC1( &trace, cg.refdef.vieworg, mins, maxs, view, cg.predictedPlayerState.clientNum, MASK_SOLID );

		if ( trace.fraction != 1.0 ) {
			FUNC2( trace.endpos, view );
			view[2] += (1.0 - trace.fraction) * 32;
			// try another trace to this position, because a tunnel may have the ceiling
			// close enough that this is poking out

			FUNC1( &trace, cg.refdef.vieworg, mins, maxs, view, cg.predictedPlayerState.clientNum, MASK_SOLID );
			FUNC2( trace.endpos, view );
		}
	}


	FUNC2( view, cg.refdef.vieworg );

	// select pitch to look at focus point from vieword
	FUNC4( focusPoint, cg.refdef.vieworg, focusPoint );
	focusDist = FUNC8( focusPoint[0] * focusPoint[0] + focusPoint[1] * focusPoint[1] );
	if ( focusDist < 1 ) {
		focusDist = 1;	// should never happen
	}
	cg.refdefViewAngles[PITCH] = -180 / M_PI * FUNC5( focusPoint[2], focusDist );
	cg.refdefViewAngles[YAW] -= cg_thirdPersonAngle.value;
}