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
struct image_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct image_s*) ; 
 int /*<<< orphan*/  GL_TRIANGLE_STRIP ; 
 int const HALF_SKY_SUBDIVISIONS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** s_skyPoints ; 
 int /*<<< orphan*/ ** s_skyTexCoords ; 

__attribute__((used)) static void FUNC5( struct image_s *image, const int mins[2], const int maxs[2] )
{
	int s, t;

	FUNC0( image );

	for ( t = mins[1]+HALF_SKY_SUBDIVISIONS; t < maxs[1]+HALF_SKY_SUBDIVISIONS; t++ )
	{
		FUNC1( GL_TRIANGLE_STRIP );

		for ( s = mins[0]+HALF_SKY_SUBDIVISIONS; s <= maxs[0]+HALF_SKY_SUBDIVISIONS; s++ )
		{
			FUNC3( s_skyTexCoords[t][s] );
			FUNC4( s_skyPoints[t][s] );

			FUNC3( s_skyTexCoords[t+1][s] );
			FUNC4( s_skyPoints[t+1][s] );
		}

		FUNC2();
	}
}