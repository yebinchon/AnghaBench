#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int* normal; int dist; } ;
typedef  TYPE_1__ visPlane_t ;
typedef  int vec_t ;
typedef  int* vec3_t ;
typedef  int /*<<< orphan*/  pstack_t ;
struct TYPE_9__ {int numpoints; int** points; } ;
typedef  TYPE_2__ fixedWinding_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int MAX_POINTS_ON_FIXED_WINDING ; 
 int ON_EPSILON ; 
 int SIDE_BACK ; 
 int SIDE_FRONT ; 
 int SIDE_ON ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 

fixedWinding_t  *FUNC4( fixedWinding_t *in, pstack_t *stack, visPlane_t *split ){
	vec_t dists[128];
	int sides[128];
	int counts[3];
	vec_t dot;
	int i, j;
	vec_t   *p1, *p2;
	vec3_t mid;
	fixedWinding_t  *neww;

	counts[0] = counts[1] = counts[2] = 0;

	// determine sides for each point
	for ( i = 0 ; i < in->numpoints ; i++ )
	{
		dot = FUNC1( in->points[i], split->normal );
		dot -= split->dist;
		dists[i] = dot;
		if ( dot > ON_EPSILON ) {
			sides[i] = SIDE_FRONT;
		}
		else if ( dot < -ON_EPSILON ) {
			sides[i] = SIDE_BACK;
		}
		else
		{
			sides[i] = SIDE_ON;
		}
		counts[sides[i]]++;
	}

	if ( !counts[1] ) {
		return in;      // completely on front side

	}
	if ( !counts[0] ) {
		FUNC2( in, stack );
		return NULL;
	}

	sides[i] = sides[0];
	dists[i] = dists[0];

	neww = FUNC0( stack );

	neww->numpoints = 0;

	for ( i = 0 ; i < in->numpoints ; i++ )
	{
		p1 = in->points[i];

		if ( neww->numpoints == MAX_POINTS_ON_FIXED_WINDING ) {
			FUNC2( neww, stack );
			return in;      // can't chop -- fall back to original
		}

		if ( sides[i] == SIDE_ON ) {
			FUNC3( p1, neww->points[neww->numpoints] );
			neww->numpoints++;
			continue;
		}

		if ( sides[i] == SIDE_FRONT ) {
			FUNC3( p1, neww->points[neww->numpoints] );
			neww->numpoints++;
		}

		if ( sides[i + 1] == SIDE_ON || sides[i + 1] == sides[i] ) {
			continue;
		}

		if ( neww->numpoints == MAX_POINTS_ON_FIXED_WINDING ) {
			FUNC2( neww, stack );
			return in;      // can't chop -- fall back to original
		}

		// generate a split point
		p2 = in->points[( i + 1 ) % in->numpoints];

		dot = dists[i] / ( dists[i] - dists[i + 1] );
		for ( j = 0 ; j < 3 ; j++ )
		{   // avoid round off error when possible
			if ( split->normal[j] == 1 ) {
				mid[j] = split->dist;
			}
			else if ( split->normal[j] == -1 ) {
				mid[j] = -split->dist;
			}
			else{
				mid[j] = p1[j] + dot * ( p2[j] - p1[j] );
			}
		}

		FUNC3( mid, neww->points[neww->numpoints] );
		neww->numpoints++;
	}

	// free the original winding
	FUNC2( in, stack );

	return neww;
}