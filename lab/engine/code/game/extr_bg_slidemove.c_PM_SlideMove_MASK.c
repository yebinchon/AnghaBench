#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  double* vec3_t ;
struct TYPE_11__ {double* normal; } ;
struct TYPE_13__ {int fraction; double* endpos; TYPE_3__ plane; int /*<<< orphan*/  entityNum; scalar_t__ allsolid; } ;
typedef  TYPE_5__ trace_t ;
typedef  int qboolean ;
struct TYPE_15__ {TYPE_4__* ps; int /*<<< orphan*/  tracemask; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; int /*<<< orphan*/  (* trace ) (TYPE_5__*,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_9__ {double* normal; } ;
struct TYPE_10__ {TYPE_1__ plane; } ;
struct TYPE_14__ {double frametime; float impactSpeed; TYPE_2__ groundTrace; scalar_t__ groundPlane; } ;
struct TYPE_12__ {double* velocity; double gravity; double* origin; scalar_t__ pm_time; int /*<<< orphan*/  clientNum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double*,double*,double*) ; 
 double FUNC1 (double*,double*) ; 
 int MAX_CLIP_PLANES ; 
 int /*<<< orphan*/  OVERCLIP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (double*,double*,double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (double*,double*,double*) ; 
 int /*<<< orphan*/  FUNC5 (double*) ; 
 int /*<<< orphan*/  FUNC6 (double*,double*) ; 
 int /*<<< orphan*/  FUNC7 (double*,float,double*,double*) ; 
 int /*<<< orphan*/  FUNC8 (double*) ; 
 int /*<<< orphan*/  FUNC9 (double*,double*) ; 
 int /*<<< orphan*/  FUNC10 (double*,float,double*) ; 
 TYPE_8__* pm ; 
 TYPE_7__ pml ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

qboolean	FUNC12( qboolean gravity ) {
	int			bumpcount, numbumps;
	vec3_t		dir;
	float		d;
	int			numplanes;
	vec3_t		planes[MAX_CLIP_PLANES];
	vec3_t		primal_velocity;
	vec3_t		clipVelocity;
	int			i, j, k;
	trace_t	trace;
	vec3_t		end;
	float		time_left;
	float		into;
	vec3_t		endVelocity;
	vec3_t		endClipVelocity;
	
	numbumps = 4;

	FUNC6 (pm->ps->velocity, primal_velocity);

	if ( gravity ) {
		FUNC6( pm->ps->velocity, endVelocity );
		endVelocity[2] -= pm->ps->gravity * pml.frametime;
		pm->ps->velocity[2] = ( pm->ps->velocity[2] + endVelocity[2] ) * 0.5;
		primal_velocity[2] = endVelocity[2];
		if ( pml.groundPlane ) {
			// slide along the ground plane
			FUNC3 (pm->ps->velocity, pml.groundTrace.plane.normal, 
				pm->ps->velocity, OVERCLIP );
		}
	}

	time_left = pml.frametime;

	// never turn against the ground plane
	if ( pml.groundPlane ) {
		numplanes = 1;
		FUNC6( pml.groundTrace.plane.normal, planes[0] );
	} else {
		numplanes = 0;
	}

	// never turn against original velocity
	FUNC9( pm->ps->velocity, planes[numplanes] );
	numplanes++;

	for ( bumpcount=0 ; bumpcount < numbumps ; bumpcount++ ) {

		// calculate position we are trying to move to
		FUNC7( pm->ps->origin, time_left, pm->ps->velocity, end );

		// see if we can make it there
		pm->trace ( &trace, pm->ps->origin, pm->mins, pm->maxs, end, pm->ps->clientNum, pm->tracemask);

		if (trace.allsolid) {
			// entity is completely trapped in another solid
			pm->ps->velocity[2] = 0;	// don't build up falling damage, but allow sideways acceleration
			return qtrue;
		}

		if (trace.fraction > 0) {
			// actually covered some distance
			FUNC6 (trace.endpos, pm->ps->origin);
		}

		if (trace.fraction == 1) {
			 break;		// moved the entire distance
		}

		// save entity for contact
		FUNC2( trace.entityNum );

		time_left -= time_left * trace.fraction;

		if (numplanes >= MAX_CLIP_PLANES) {
			// this shouldn't really happen
			FUNC5( pm->ps->velocity );
			return qtrue;
		}

		//
		// if this is the same plane we hit before, nudge velocity
		// out along it, which fixes some epsilon issues with
		// non-axial planes
		//
		for ( i = 0 ; i < numplanes ; i++ ) {
			if ( FUNC1( trace.plane.normal, planes[i] ) > 0.99 ) {
				FUNC4( trace.plane.normal, pm->ps->velocity, pm->ps->velocity );
				break;
			}
		}
		if ( i < numplanes ) {
			continue;
		}
		FUNC6 (trace.plane.normal, planes[numplanes]);
		numplanes++;

		//
		// modify velocity so it parallels all of the clip planes
		//

		// find a plane that it enters
		for ( i = 0 ; i < numplanes ; i++ ) {
			into = FUNC1( pm->ps->velocity, planes[i] );
			if ( into >= 0.1 ) {
				continue;		// move doesn't interact with the plane
			}

			// see how hard we are hitting things
			if ( -into > pml.impactSpeed ) {
				pml.impactSpeed = -into;
			}

			// slide along the plane
			FUNC3 (pm->ps->velocity, planes[i], clipVelocity, OVERCLIP );

			if ( gravity ) {
				// slide along the plane
				FUNC3 (endVelocity, planes[i], endClipVelocity, OVERCLIP );
			}

			// see if there is a second plane that the new move enters
			for ( j = 0 ; j < numplanes ; j++ ) {
				if ( j == i ) {
					continue;
				}
				if ( FUNC1( clipVelocity, planes[j] ) >= 0.1 ) {
					continue;		// move doesn't interact with the plane
				}

				// try clipping the move to the plane
				FUNC3( clipVelocity, planes[j], clipVelocity, OVERCLIP );

				if ( gravity ) {
					FUNC3( endClipVelocity, planes[j], endClipVelocity, OVERCLIP );
				}

				// see if it goes back into the first clip plane
				if ( FUNC1( clipVelocity, planes[i] ) >= 0 ) {
					continue;
				}

				// slide the original velocity along the crease
				FUNC0 (planes[i], planes[j], dir);
				FUNC8( dir );
				d = FUNC1( dir, pm->ps->velocity );
				FUNC10( dir, d, clipVelocity );

				if ( gravity ) {
					FUNC0 (planes[i], planes[j], dir);
					FUNC8( dir );
					d = FUNC1( dir, endVelocity );
					FUNC10( dir, d, endClipVelocity );
				}

				// see if there is a third plane the the new move enters
				for ( k = 0 ; k < numplanes ; k++ ) {
					if ( k == i || k == j ) {
						continue;
					}
					if ( FUNC1( clipVelocity, planes[k] ) >= 0.1 ) {
						continue;		// move doesn't interact with the plane
					}

					// stop dead at a tripple plane interaction
					FUNC5( pm->ps->velocity );
					return qtrue;
				}
			}

			// if we have fixed all interactions, try another move
			FUNC6( clipVelocity, pm->ps->velocity );

			if ( gravity ) {
				FUNC6( endClipVelocity, endVelocity );
			}

			break;
		}
	}

	if ( gravity ) {
		FUNC6( endVelocity, pm->ps->velocity );
	}

	// don't change velocity if in a timer (FIXME: is this correct?)
	if ( pm->ps->pm_time ) {
		FUNC6( primal_velocity, pm->ps->velocity );
	}

	return ( bumpcount != 0 );
}