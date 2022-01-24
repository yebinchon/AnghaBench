#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ pm_type; int bobCycle; int* velocity; int /*<<< orphan*/  viewangles; int /*<<< orphan*/  origin; } ;
typedef  TYPE_1__ playerState_t ;
struct TYPE_9__ {int rdflags; int /*<<< orphan*/  viewaxis; int /*<<< orphan*/  vieworg; } ;
struct TYPE_14__ {int bobcycle; scalar_t__ time; scalar_t__ nextOrbitTime; int predictedErrorTime; TYPE_2__ refdef; scalar_t__ hyperspace; int /*<<< orphan*/  refdefViewAngles; scalar_t__ renderingThirdPerson; int /*<<< orphan*/  predictedError; int /*<<< orphan*/  xyspeed; int /*<<< orphan*/  bobfracsin; TYPE_1__ predictedPlayerState; } ;
struct TYPE_13__ {scalar_t__ value; scalar_t__ integer; } ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_11__ {int value; } ;
struct TYPE_10__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int M_PI ; 
 scalar_t__ PM_INTERMISSION ; 
 int RDF_HYPERSPACE ; 
 int RDF_NOWORLDMODEL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__ cg ; 
 TYPE_6__ cg_cameraOrbit ; 
 TYPE_5__ cg_cameraOrbitDelay ; 
 TYPE_4__ cg_errorDecay ; 
 TYPE_3__ cg_thirdPersonAngle ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11( void ) {
	playerState_t	*ps;

	FUNC8( &cg.refdef, 0, sizeof( cg.refdef ) );

	// strings for in game rendering
	// Q_strncpyz( cg.refdef.text[0], "Park Ranger", sizeof(cg.refdef.text[0]) );
	// Q_strncpyz( cg.refdef.text[1], "19", sizeof(cg.refdef.text[1]) );

	// calculate size of 3D view
	FUNC2();

	ps = &cg.predictedPlayerState;
/*
	if (cg.cameraMode) {
		vec3_t origin, angles;
		if (trap_getCameraInfo(cg.time, &origin, &angles)) {
			VectorCopy(origin, cg.refdef.vieworg);
			angles[ROLL] = 0;
			VectorCopy(angles, cg.refdefViewAngles);
			AnglesToAxis( cg.refdefViewAngles, cg.refdef.viewaxis );
			return CG_CalcFov();
		} else {
			cg.cameraMode = qfalse;
		}
	}
*/
	// intermission view
	if ( ps->pm_type == PM_INTERMISSION ) {
		FUNC5( ps->origin, cg.refdef.vieworg );
		FUNC5( ps->viewangles, cg.refdefViewAngles );
		FUNC0( cg.refdefViewAngles, cg.refdef.viewaxis );
		return FUNC1();
	}

	cg.bobcycle = ( ps->bobCycle & 128 ) >> 7;
	cg.bobfracsin = FUNC7( FUNC9( ( ps->bobCycle & 127 ) / 127.0 * M_PI ) );
	cg.xyspeed = FUNC10( ps->velocity[0] * ps->velocity[0] +
		ps->velocity[1] * ps->velocity[1] );


	FUNC5( ps->origin, cg.refdef.vieworg );
	FUNC5( ps->viewangles, cg.refdefViewAngles );

	if (cg_cameraOrbit.integer) {
		if (cg.time > cg.nextOrbitTime) {
			cg.nextOrbitTime = cg.time + cg_cameraOrbitDelay.integer;
			cg_thirdPersonAngle.value += cg_cameraOrbit.value;
		}
	}
	// add error decay
	if ( cg_errorDecay.value > 0 ) {
		int		t;
		float	f;

		t = cg.time - cg.predictedErrorTime;
		f = ( cg_errorDecay.value - t ) / cg_errorDecay.value;
		if ( f > 0 && f < 1 ) {
			FUNC6( cg.refdef.vieworg, f, cg.predictedError, cg.refdef.vieworg );
		} else {
			cg.predictedErrorTime = 0;
		}
	}

	if ( cg.renderingThirdPerson ) {
		// back away from character
		FUNC4();
	} else {
		// offset for local bobbing and kicks
		FUNC3();
	}

	// position eye relative to origin
	FUNC0( cg.refdefViewAngles, cg.refdef.viewaxis );

	if ( cg.hyperspace ) {
		cg.refdef.rdflags |= RDF_NOWORLDMODEL | RDF_HYPERSPACE;
	}

	// field of view
	return FUNC1();
}