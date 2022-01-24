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
typedef  float* vec3_t ;
struct TYPE_5__ {scalar_t__ cluster; int /*<<< orphan*/  origin; int /*<<< orphan*/  hit; scalar_t__ opaque; int /*<<< orphan*/  end; int /*<<< orphan*/  normal; } ;
typedef  TYPE_1__ trace_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,float*,float*) ; 
 float FUNC1 (float) ; 
 float DIRT_CONE_ANGLE ; 
 float FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,float*) ; 
 float FUNC6 (float*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,float,float*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (float*,float*) ; 
 int /*<<< orphan*/  FUNC9 (float*,float,float,float) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 float FUNC11 (float) ; 
 float dirtDepth ; 
 int /*<<< orphan*/  dirtGain ; 
 int dirtMode ; 
 float dirtScale ; 
 float** dirtVectors ; 
 int /*<<< orphan*/  dirty ; 
 int numDirtVectors ; 
 float FUNC12 (float,int /*<<< orphan*/ ) ; 
 float FUNC13 (float) ; 

float FUNC14( trace_t *trace ){
	int i;
	float gatherDirt, outDirt, angle, elevation, ooDepth;
	vec3_t normal, worldUp, myUp, myRt, temp, direction, displacement;


	/* dummy check */
	if ( !dirty ) {
		return 1.0f;
	}
	if ( trace == NULL || trace->cluster < 0 ) {
		return 0.0f;
	}

	/* setup */
	gatherDirt = 0.0f;
	ooDepth = 1.0f / dirtDepth;
	FUNC5( trace->normal, normal );

	/* check if the normal is aligned to the world-up */
	if ( normal[ 0 ] == 0.0f && normal[ 1 ] == 0.0f ) {
		if ( normal[ 2 ] == -1.0f ) {
			FUNC9( myRt, -1.0f, 0.0f, 0.0f );
			FUNC9( myUp,  0.0f, 1.0f, 0.0f );
		}
		else {
			FUNC9( myRt, 1.0f, 0.0f, 0.0f );
			FUNC9( myUp, 0.0f, 1.0f, 0.0f );
		}
	}
	else
	{
		FUNC9( worldUp, 0.0f, 0.0f, 1.0f );
		FUNC0( normal, worldUp, myRt );
		FUNC8( myRt, myRt );
		FUNC0( myRt, normal, myUp );
		FUNC8( myUp, myUp );
	}

	/* 1 = random mode, 0 (well everything else) = non-random mode */
	if ( dirtMode == 1 ) {
		/* iterate */
		for ( i = 0; i < numDirtVectors; i++ )
		{
			/* get random vector */
			angle = FUNC2() * FUNC1( 360.0f );
			elevation = FUNC2() * FUNC1( DIRT_CONE_ANGLE );
			temp[ 0 ] = FUNC11( angle ) * FUNC13( elevation );
			temp[ 1 ] = FUNC13( angle ) * FUNC13( elevation );
			temp[ 2 ] = FUNC11( elevation );

			/* transform into tangent space */
			direction[ 0 ] = myRt[ 0 ] * temp[ 0 ] + myUp[ 0 ] * temp[ 1 ] + normal[ 0 ] * temp[ 2 ];
			direction[ 1 ] = myRt[ 1 ] * temp[ 0 ] + myUp[ 1 ] * temp[ 1 ] + normal[ 1 ] * temp[ 2 ];
			direction[ 2 ] = myRt[ 2 ] * temp[ 0 ] + myUp[ 2 ] * temp[ 1 ] + normal[ 2 ] * temp[ 2 ];

			/* set endpoint */
			FUNC7( trace->origin, dirtDepth, direction, trace->end );
			FUNC3( trace );

			/* trace */
			FUNC4( trace );
			if ( trace->opaque ) {
				FUNC10( trace->hit, trace->origin, displacement );
				gatherDirt += 1.0f - ooDepth * FUNC6( displacement );
			}
		}
	}
	else
	{
		/* iterate through ordered vectors */
		for ( i = 0; i < numDirtVectors; i++ )
		{
			/* transform vector into tangent space */
			direction[ 0 ] = myRt[ 0 ] * dirtVectors[ i ][ 0 ] + myUp[ 0 ] * dirtVectors[ i ][ 1 ] + normal[ 0 ] * dirtVectors[ i ][ 2 ];
			direction[ 1 ] = myRt[ 1 ] * dirtVectors[ i ][ 0 ] + myUp[ 1 ] * dirtVectors[ i ][ 1 ] + normal[ 1 ] * dirtVectors[ i ][ 2 ];
			direction[ 2 ] = myRt[ 2 ] * dirtVectors[ i ][ 0 ] + myUp[ 2 ] * dirtVectors[ i ][ 1 ] + normal[ 2 ] * dirtVectors[ i ][ 2 ];

			/* set endpoint */
			FUNC7( trace->origin, dirtDepth, direction, trace->end );
			FUNC3( trace );

			/* trace */
			FUNC4( trace );
			if ( trace->opaque ) {
				FUNC10( trace->hit, trace->origin, displacement );
				gatherDirt += 1.0f - ooDepth * FUNC6( displacement );
			}
		}
	}

	/* direct ray */
	FUNC7( trace->origin, dirtDepth, normal, trace->end );
	FUNC3( trace );

	/* trace */
	FUNC4( trace );
	if ( trace->opaque ) {
		FUNC10( trace->hit, trace->origin, displacement );
		gatherDirt += 1.0f - ooDepth * FUNC6( displacement );
	}

	/* early out */
	if ( gatherDirt <= 0.0f ) {
		return 1.0f;
	}

	/* apply gain (does this even do much? heh) */
	outDirt = FUNC12( gatherDirt / ( numDirtVectors + 1 ), dirtGain );
	if ( outDirt > 1.0f ) {
		outDirt = 1.0f;
	}

	/* apply scale */
	outDirt *= dirtScale;
	if ( outDirt > 1.0f ) {
		outDirt = 1.0f;
	}

	/* return to sender */
	return 1.0f - outDirt;
}