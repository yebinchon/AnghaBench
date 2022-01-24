#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
struct TYPE_9__ {int /*<<< orphan*/  normal; } ;
struct TYPE_11__ {double fraction; float* endpos; TYPE_1__ plane; scalar_t__ allsolid; } ;
typedef  TYPE_3__ trace_t ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_12__ {scalar_t__ debugLevel; TYPE_2__* ps; int /*<<< orphan*/  tracemask; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; int /*<<< orphan*/  (* trace ) (TYPE_3__*,float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_10__ {float* origin; float* velocity; int /*<<< orphan*/  clientNum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 double FUNC1 (int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  EV_STEP_12 ; 
 int /*<<< orphan*/  EV_STEP_16 ; 
 int /*<<< orphan*/  EV_STEP_4 ; 
 int /*<<< orphan*/  EV_STEP_8 ; 
 int /*<<< orphan*/  OVERCLIP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (float*,int /*<<< orphan*/ ,float*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ STEPSIZE ; 
 int /*<<< orphan*/  FUNC5 (float*,float*) ; 
 int /*<<< orphan*/  FUNC6 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  c_pmove ; 
 float* down_o ; 
 float* down_v ; 
 TYPE_8__* pm ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11( qboolean gravity ) {
	vec3_t		start_o, start_v;
//	vec3_t		down_o, down_v;
	trace_t		trace;
//	float		down_dist, up_dist;
//	vec3_t		delta, delta2;
	vec3_t		up, down;
	float		stepSize;

	FUNC5 (pm->ps->origin, start_o);
	FUNC5 (pm->ps->velocity, start_v);

	if ( FUNC4( gravity ) == 0 ) {
		return;		// we got exactly where we wanted to go first try	
	}

	FUNC5(start_o, down);
	down[2] -= STEPSIZE;
	pm->trace (&trace, start_o, pm->mins, pm->maxs, down, pm->ps->clientNum, pm->tracemask);
	FUNC6(up, 0, 0, 1);
	// never step up when you still have up velocity
	if ( pm->ps->velocity[2] > 0 && (trace.fraction == 1.0 ||
										FUNC1(trace.plane.normal, up) < 0.7)) {
		return;
	}

	//VectorCopy (pm->ps->origin, down_o);
	//VectorCopy (pm->ps->velocity, down_v);

	FUNC5 (start_o, up);
	up[2] += STEPSIZE;

	// test the player position if they were a stepheight higher
	pm->trace (&trace, start_o, pm->mins, pm->maxs, up, pm->ps->clientNum, pm->tracemask);
	if ( trace.allsolid ) {
		if ( pm->debugLevel ) {
			FUNC0("%i:bend can't step\n", c_pmove);
		}
		return;		// can't step up
	}

	stepSize = trace.endpos[2] - start_o[2];
	// try slidemove from this position
	FUNC5 (trace.endpos, pm->ps->origin);
	FUNC5 (start_v, pm->ps->velocity);

	FUNC4( gravity );

	// push down the final amount
	FUNC5 (pm->ps->origin, down);
	down[2] -= stepSize;
	pm->trace (&trace, pm->ps->origin, pm->mins, pm->maxs, down, pm->ps->clientNum, pm->tracemask);
	if ( !trace.allsolid ) {
		FUNC5 (trace.endpos, pm->ps->origin);
	}
	if ( trace.fraction < 1.0 ) {
		FUNC3( pm->ps->velocity, trace.plane.normal, pm->ps->velocity, OVERCLIP );
	}

#if 0
	// if the down trace can trace back to the original position directly, don't step
	pm->trace( &trace, pm->ps->origin, pm->mins, pm->maxs, start_o, pm->ps->clientNum, pm->tracemask);
	if ( trace.fraction == 1.0 ) {
		// use the original move
		VectorCopy (down_o, pm->ps->origin);
		VectorCopy (down_v, pm->ps->velocity);
		if ( pm->debugLevel ) {
			Com_Printf("%i:bend\n", c_pmove);
		}
	} else 
#endif
	{
		// use the step move
		float	delta;

		delta = pm->ps->origin[2] - start_o[2];
		if ( delta > 2 ) {
			if ( delta < 7 ) {
				FUNC2( EV_STEP_4 );
			} else if ( delta < 11 ) {
				FUNC2( EV_STEP_8 );
			} else if ( delta < 15 ) {
				FUNC2( EV_STEP_12 );
			} else {
				FUNC2( EV_STEP_16 );
			}
		}
		if ( pm->debugLevel ) {
			FUNC0("%i:stepped\n", c_pmove);
		}
	}
}