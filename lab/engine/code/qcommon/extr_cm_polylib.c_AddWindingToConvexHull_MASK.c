#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int numpoints; float** p; } ;
typedef  TYPE_1__ winding_t ;
typedef  float* vec3_t ;
typedef  scalar_t__ qboolean ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (float**,float**,int) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (float*,float*,float*) ; 
 float FUNC4 (float*,float*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int MAX_HULL_POINTS ; 
 float ON_EPSILON ; 
 int /*<<< orphan*/  FUNC6 (float*,float*) ; 
 int /*<<< orphan*/  FUNC7 (float*,float*) ; 
 int /*<<< orphan*/  FUNC8 (float*,float*,float*) ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 

void	FUNC9( winding_t *w, winding_t **hull, vec3_t normal ) {
	int			i, j, k;
	float		*p, *copy;
	vec3_t		dir;
	float		d;
	int			numHullPoints, numNew;
	vec3_t		hullPoints[MAX_HULL_POINTS];
	vec3_t		newHullPoints[MAX_HULL_POINTS];
	vec3_t		hullDirs[MAX_HULL_POINTS];
	qboolean	hullSide[MAX_HULL_POINTS];
	qboolean	outside;

	if ( !*hull ) {
		*hull = FUNC2( w );
		return;
	}

	numHullPoints = (*hull)->numpoints;
	FUNC1( hullPoints, (*hull)->p, numHullPoints * sizeof(vec3_t) );

	for ( i = 0 ; i < w->numpoints ; i++ ) {
		p = w->p[i];

		// calculate hull side vectors
		for ( j = 0 ; j < numHullPoints ; j++ ) {
			k = ( j + 1 ) % numHullPoints;

			FUNC8( hullPoints[k], hullPoints[j], dir );
			FUNC7( dir, dir );
			FUNC3( normal, dir, hullDirs[j] );
		}

		outside = qfalse;
		for ( j = 0 ; j < numHullPoints ; j++ ) {
			FUNC8( p, hullPoints[j], dir );
			d = FUNC4( dir, hullDirs[j] );
			if ( d >= ON_EPSILON ) {
				outside = qtrue;
			}
			if ( d >= -ON_EPSILON ) {
				hullSide[j] = qtrue;
			} else {
				hullSide[j] = qfalse;
			}
		}

		// if the point is effectively inside, do nothing
		if ( !outside ) {
			continue;
		}

		// find the back side to front side transition
		for ( j = 0 ; j < numHullPoints ; j++ ) {
			if ( !hullSide[ j % numHullPoints ] && hullSide[ (j + 1) % numHullPoints ] ) {
				break;
			}
		}
		if ( j == numHullPoints ) {
			continue;
		}

		// insert the point here
		FUNC6( p, newHullPoints[0] );
		numNew = 1;

		// copy over all points that aren't double fronts
		j = (j+1)%numHullPoints;
		for ( k = 0 ; k < numHullPoints ; k++ ) {
			if ( hullSide[ (j+k) % numHullPoints ] && hullSide[ (j+k+1) % numHullPoints ] ) {
				continue;
			}
			copy = hullPoints[ (j+k+1) % numHullPoints ];
			FUNC6( copy, newHullPoints[numNew] );
			numNew++;
		}

		numHullPoints = numNew;
		FUNC1( hullPoints, newHullPoints, numHullPoints * sizeof(vec3_t) );
	}

	FUNC5( *hull );
	w = FUNC0( numHullPoints );
	w->numpoints = numHullPoints;
	*hull = w;
	FUNC1( w->p, hullPoints, numHullPoints * sizeof(vec3_t) );
}