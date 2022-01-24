#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int numpoints; int** p; } ;
typedef  TYPE_1__ winding_t ;
typedef  int vec_t ;
typedef  int /*<<< orphan*/  vec3_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int MAX_WORLD_COORD ; 
 int MIN_WORLD_COORD ; 
 int ON_EPSILON ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 

void FUNC8( winding_t *w ){
	int i, j;
	vec_t   *p1, *p2;
	vec_t d, edgedist;
	vec3_t dir, edgenormal, facenormal;
	vec_t area;
	vec_t facedist;

	if ( w->numpoints < 3 ) {
		FUNC2( "CheckWinding: %i points",w->numpoints );
	}

	area = FUNC6( w );
	if ( area < 1 ) {
		FUNC2( "CheckWinding: %f area", area );
	}

	FUNC7( w, facenormal, &facedist );

	for ( i = 0 ; i < w->numpoints ; i++ )
	{
		p1 = w->p[i];

		for ( j = 0 ; j < 3 ; j++ )
			if ( p1[j] > MAX_WORLD_COORD || p1[j] < MIN_WORLD_COORD ) {
				FUNC2( "CheckFace: MAX_WORLD_COORD exceeded: %f",p1[j] );
			}

		j = i + 1 == w->numpoints ? 0 : i + 1;

		// check the point is on the face plane
		d = FUNC1( p1, facenormal ) - facedist;
		if ( d < -ON_EPSILON || d > ON_EPSILON ) {
			FUNC2( "CheckWinding: point off plane" );
		}

		// check the edge isnt degenerate
		p2 = w->p[j];
		FUNC5( p2, p1, dir );

		if ( FUNC3( dir ) < ON_EPSILON ) {
			FUNC2( "CheckWinding: degenerate edge" );
		}

		FUNC0( facenormal, dir, edgenormal );
		FUNC4( edgenormal, edgenormal );
		edgedist = FUNC1( p1, edgenormal );
		edgedist += ON_EPSILON;

		// all other points must be on front side
		for ( j = 0 ; j < w->numpoints ; j++ )
		{
			if ( j == i ) {
				continue;
			}
			d = FUNC1( w->p[j], edgenormal );
			if ( d > edgedist ) {
				FUNC2( "CheckWinding: non-convex" );
			}
		}
	}
}