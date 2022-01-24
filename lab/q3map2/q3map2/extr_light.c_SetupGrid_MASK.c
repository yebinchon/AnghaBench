#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
struct TYPE_8__ {float* mins; float* maxs; } ;
struct TYPE_7__ {float** ambient; void** styles; } ;

/* Variables and functions */
 void* LS_NONE ; 
 void* LS_NORMAL ; 
 int MAX_LIGHTMAPS ; 
 int MAX_MAP_LIGHTGRID ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (float*,float*) ; 
 int /*<<< orphan*/  FUNC5 (float*,float*) ; 
 float* ambientColor ; 
 TYPE_1__* bspGridPoints ; 
 TYPE_5__* bspModels ; 
 float FUNC6 (float) ; 
 int /*<<< orphan*/ * entities ; 
 float FUNC7 (float) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int* gridBounds ; 
 float* gridMins ; 
 float* gridSize ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ noGridLighting ; 
 int numBSPGridPoints ; 
 int numRawGridPoints ; 
 TYPE_1__* rawGridPoints ; 
 TYPE_1__* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,float,float,float) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*,float*,float*,float*) ; 

void FUNC13( void ){
	int i, j;
	vec3_t maxs, oldGridSize;
	const char  *value;
	char temp[ 64 ];


	/* don't do this if not grid lighting */
	if ( noGridLighting ) {
		return;
	}

	/* ydnar: set grid size */
	value = FUNC3( &entities[ 0 ], "gridsize" );
	if ( value[ 0 ] != '\0' ) {
		FUNC12( value, "%f %f %f", &gridSize[ 0 ], &gridSize[ 1 ], &gridSize[ 2 ] );
	}

	/* quantize it */
	FUNC5( gridSize, oldGridSize );
	for ( i = 0; i < 3; i++ )
		gridSize[ i ] = gridSize[ i ] >= 8.0f ? FUNC7( gridSize[ i ] ) : 8.0f;

	/* ydnar: increase gridSize until grid count is smaller than max allowed */
	numRawGridPoints = MAX_MAP_LIGHTGRID + 1;
	j = 0;
	while ( numRawGridPoints > MAX_MAP_LIGHTGRID )
	{
		/* get world bounds */
		for ( i = 0; i < 3; i++ )
		{
			gridMins[ i ] = gridSize[ i ] * FUNC6( bspModels[ 0 ].mins[ i ] / gridSize[ i ] );
			maxs[ i ] = gridSize[ i ] * FUNC7( bspModels[ 0 ].maxs[ i ] / gridSize[ i ] );
			gridBounds[ i ] = ( maxs[ i ] - gridMins[ i ] ) / gridSize[ i ] + 1;
		}

		/* set grid size */
		numRawGridPoints = gridBounds[ 0 ] * gridBounds[ 1 ] * gridBounds[ 2 ];

		/* increase grid size a bit */
		if ( numRawGridPoints > MAX_MAP_LIGHTGRID ) {
			gridSize[ j++ % 3 ] += 16.0f;
		}
	}

	/* print it */
	FUNC2( "Grid size = { %1.0f, %1.0f, %1.0f }\n", gridSize[ 0 ], gridSize[ 1 ], gridSize[ 2 ] );

	/* different? */
	if ( !FUNC4( gridSize, oldGridSize ) ) {
		FUNC11( temp, "%.0f %.0f %.0f", gridSize[ 0 ], gridSize[ 1 ], gridSize[ 2 ] );
		FUNC0( &entities[ 0 ], "gridsize", (const char*) temp );
		FUNC1( SYS_VRB, "Storing adjusted grid size\n" );
	}

	/* 2nd variable. fixme: is this silly? */
	numBSPGridPoints = numRawGridPoints;

	/* allocate lightgrid */
	rawGridPoints = FUNC10( numRawGridPoints * sizeof( *rawGridPoints ) );
	FUNC9( rawGridPoints, 0, numRawGridPoints * sizeof( *rawGridPoints ) );

	if ( bspGridPoints != NULL ) {
		FUNC8( bspGridPoints );
	}
	bspGridPoints = FUNC10( numBSPGridPoints * sizeof( *bspGridPoints ) );
	FUNC9( bspGridPoints, 0, numBSPGridPoints * sizeof( *bspGridPoints ) );

	/* clear lightgrid */
	for ( i = 0; i < numRawGridPoints; i++ )
	{
		FUNC5( ambientColor, rawGridPoints[ i ].ambient[ j ] );
		rawGridPoints[ i ].styles[ 0 ] = LS_NORMAL;
		bspGridPoints[ i ].styles[ 0 ] = LS_NORMAL;
		for ( j = 1; j < MAX_LIGHTMAPS; j++ )
		{
			rawGridPoints[ i ].styles[ j ] = LS_NONE;
			bspGridPoints[ i ].styles[ j ] = LS_NONE;
		}
	}

	/* note it */
	FUNC2( "%9d grid points\n", numRawGridPoints );
}