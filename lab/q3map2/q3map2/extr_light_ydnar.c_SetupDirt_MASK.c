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

/* Variables and functions */
 float FUNC0 (int) ; 
 int DIRT_CONE_ANGLE ; 
 float DIRT_NUM_ANGLE_STEPS ; 
 int DIRT_NUM_ELEVATION_STEPS ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (float) ; 
 int** dirtVectors ; 
 size_t numDirtVectors ; 
 int FUNC3 (float) ; 

void FUNC4( void ){
	int i, j;
	float angle, elevation, angleStep, elevationStep;


	/* note it */
	FUNC1( SYS_VRB, "--- SetupDirt ---\n" );

	/* calculate angular steps */
	angleStep = FUNC0( 360.0f / DIRT_NUM_ANGLE_STEPS );
	elevationStep = FUNC0( DIRT_CONE_ANGLE / DIRT_NUM_ELEVATION_STEPS );

	/* iterate angle */
	angle = 0.0f;
	for ( i = 0, angle = 0.0f; i < DIRT_NUM_ANGLE_STEPS; i++, angle += angleStep )
	{
		/* iterate elevation */
		for ( j = 0, elevation = elevationStep * 0.5f; j < DIRT_NUM_ELEVATION_STEPS; j++, elevation += elevationStep )
		{
			dirtVectors[ numDirtVectors ][ 0 ] = FUNC3( elevation ) * FUNC2( angle );
			dirtVectors[ numDirtVectors ][ 1 ] = FUNC3( elevation ) * FUNC3( angle );
			dirtVectors[ numDirtVectors ][ 2 ] = FUNC2( elevation );
			numDirtVectors++;
		}
	}

	/* emit some statistics */
	FUNC1( SYS_VRB, "%9d dirtmap vectors\n", numDirtVectors );
}