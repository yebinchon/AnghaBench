#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ vec_t ;
typedef  int* vec3_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*,int*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int* const,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 scalar_t__ FUNC5 (int*) ; 
 scalar_t__ distanceEpsilon ; 

void FUNC6( vec3_t normal, vec_t *dist, int numPoints, const vec3_t *points ){
	int i;
	vec3_t center;
	vec_t distNearestInt;

	if ( FUNC2( normal ) ) {
		if ( numPoints > 0 ) {
			// Adjust the dist so that the provided points don't drift away.
			FUNC4( center );
			for ( i = 0; i < numPoints; i++ )
			{
				FUNC3( center, points[i], center );
			}
			for ( i = 0; i < 3; i++ ) { center[i] = center[i] / numPoints; }
			*dist = FUNC0( normal, center );
		}
	}

	if ( FUNC5( normal ) ) {
		// Only snap distance if the normal is an axis.  Otherwise there
		// is nothing "natural" about snapping the distance to an integer.
		distNearestInt = FUNC1( *dist );
		if ( -distanceEpsilon < *dist - distNearestInt && *dist - distNearestInt < distanceEpsilon ) {
			*dist = distNearestInt;
		}
	}
}