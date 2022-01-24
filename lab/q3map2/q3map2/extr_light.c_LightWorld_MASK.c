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
typedef  int /*<<< orphan*/  vec3_t ;
typedef  scalar_t__ qboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  DirtyRawLightmap ; 
 float FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IlluminateRawLightmap ; 
 int /*<<< orphan*/  IlluminateVertexes ; 
 int /*<<< orphan*/  MapRawLightmap ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  TraceGrid ; 
 char* FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 float FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,double,double,double) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ambientColor ; 
 float FUNC20 (char const*) ; 
 int bounce ; 
 scalar_t__ bouncegrid ; 
 scalar_t__ bouncing ; 
 scalar_t__ dirty ; 
 int /*<<< orphan*/ * entities ; 
 int /*<<< orphan*/  fast ; 
 int /*<<< orphan*/  fastbounce ; 
 int /*<<< orphan*/  fastgrid ; 
 int /*<<< orphan*/ * gridBounds ; 
 scalar_t__ gridBoundsCulled ; 
 scalar_t__ gridEnvelopeCulled ; 
 scalar_t__ lightsBoundsCulled ; 
 scalar_t__ lightsClusterCulled ; 
 scalar_t__ lightsEnvelopeCulled ; 
 scalar_t__ lightsPlaneCulled ; 
 int /*<<< orphan*/  minGridLight ; 
 int /*<<< orphan*/  minLight ; 
 int /*<<< orphan*/  minVertexLight ; 
 int /*<<< orphan*/  noGridLighting ; 
 int /*<<< orphan*/  numBSPDrawSurfaces ; 
 int /*<<< orphan*/  numBSPGridPoints ; 
 int /*<<< orphan*/  numDiffuseLights ; 
 scalar_t__ numLights ; 
 int /*<<< orphan*/  numLuxels ; 
 int /*<<< orphan*/  numLuxelsIlluminated ; 
 int /*<<< orphan*/  numLuxelsMapped ; 
 int /*<<< orphan*/  numLuxelsOccluded ; 
 int /*<<< orphan*/  numPointLights ; 
 int /*<<< orphan*/  numRawGridPoints ; 
 int /*<<< orphan*/  numRawLightmaps ; 
 int /*<<< orphan*/  numSpotLights ; 
 int /*<<< orphan*/  numSunLights ; 
 int /*<<< orphan*/  numVertsIlluminated ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 scalar_t__ shade ; 
 int /*<<< orphan*/  source ; 
 int /*<<< orphan*/  subdivideThreshold ; 

void FUNC21( void ){
	vec3_t color;
	float f;
	int b, bt;
	qboolean minVertex, minGrid;
	const char  *value;


	/* ydnar: smooth normals */
	if ( shade ) {
		FUNC13( "--- SmoothNormals ---\n" );
		FUNC9();
	}

	/* determine the number of grid points */
	FUNC13( "--- SetupGrid ---\n" );
	FUNC8();

	/* find the optional minimum lighting values */
	FUNC3( &entities[ 0 ], "_color", color );
	if ( FUNC16( color ) == 0.0f ) {
		FUNC18( color, 1.0, 1.0, 1.0 );
	}

	/* ambient */
	f = FUNC2( &entities[ 0 ], "_ambient" );
	if ( f == 0.0f ) {
		f = FUNC2( &entities[ 0 ], "ambient" );
	}
	FUNC17( color, f, ambientColor );

	/* minvertexlight */
	minVertex = qfalse;
	value = FUNC14( &entities[ 0 ], "_minvertexlight" );
	if ( value[ 0 ] != '\0' ) {
		minVertex = qtrue;
		f = FUNC20( value );
		FUNC17( color, f, minVertexLight );
	}

	/* mingridlight */
	minGrid = qfalse;
	value = FUNC14( &entities[ 0 ], "_mingridlight" );
	if ( value[ 0 ] != '\0' ) {
		minGrid = qtrue;
		f = FUNC20( value );
		FUNC17( color, f, minGridLight );
	}

	/* minlight */
	value = FUNC14( &entities[ 0 ], "_minlight" );
	if ( value[ 0 ] != '\0' ) {
		f = FUNC20( value );
		FUNC17( color, f, minLight );
		if ( minVertex == qfalse ) {
			FUNC17( color, f, minVertexLight );
		}
		if ( minGrid == qfalse ) {
			FUNC17( color, f, minGridLight );
		}
	}

	/* create world lights */
	FUNC12( SYS_VRB, "--- CreateLights ---\n" );
	FUNC0();
	FUNC1();
	FUNC13( "%9d point lights\n", numPointLights );
	FUNC13( "%9d spotlights\n", numSpotLights );
	FUNC13( "%9d diffuse (area) lights\n", numDiffuseLights );
	FUNC13( "%9d sun/sky lights\n", numSunLights );

	/* calculate lightgrid */
	if ( !noGridLighting ) {
		/* ydnar: set up light envelopes */
		FUNC7( qtrue, fastgrid );

		FUNC13( "--- TraceGrid ---\n" );
		FUNC6( numRawGridPoints, qtrue, TraceGrid );
		FUNC13( "%d x %d x %d = %d grid\n",
					gridBounds[ 0 ], gridBounds[ 1 ], gridBounds[ 2 ], numBSPGridPoints );

		/* ydnar: emit statistics on light culling */
		FUNC12( SYS_VRB, "%9d grid points envelope culled\n", gridEnvelopeCulled );
		FUNC12( SYS_VRB, "%9d grid points bounds culled\n", gridBoundsCulled );
	}

	/* slight optimization to remove a sqrt */
	subdivideThreshold *= subdivideThreshold;

	/* map the world luxels */
	FUNC13( "--- MapRawLightmap ---\n" );
	FUNC6( numRawLightmaps, qtrue, MapRawLightmap );
	FUNC13( "%9d luxels\n", numLuxels );
	FUNC13( "%9d luxels mapped\n", numLuxelsMapped );
	FUNC13( "%9d luxels occluded\n", numLuxelsOccluded );

	/* dirty them up */
	if ( dirty ) {
		FUNC13( "--- DirtyRawLightmap ---\n" );




		FUNC6( numRawLightmaps, qtrue, DirtyRawLightmap );
	}


	/* ydnar: set up light envelopes */
	FUNC7( qfalse, fast );

	/* light up my world */
	lightsPlaneCulled = 0;
	lightsEnvelopeCulled = 0;
	lightsBoundsCulled = 0;
	lightsClusterCulled = 0;

	FUNC13( "--- IlluminateRawLightmap ---\n" );
	FUNC6( numRawLightmaps, qtrue, IlluminateRawLightmap );
	FUNC13( "%9d luxels illuminated\n", numLuxelsIlluminated );

	FUNC10();

	FUNC13( "--- IlluminateVertexes ---\n" );
	FUNC6( numBSPDrawSurfaces, qtrue, IlluminateVertexes );
	FUNC13( "%9d vertexes illuminated\n", numVertsIlluminated );

	/* ydnar: emit statistics on light culling */
	FUNC12( SYS_VRB, "%9d lights plane culled\n", lightsPlaneCulled );
	FUNC12( SYS_VRB, "%9d lights envelope culled\n", lightsEnvelopeCulled );
	FUNC12( SYS_VRB, "%9d lights bounds culled\n", lightsBoundsCulled );
	FUNC12( SYS_VRB, "%9d lights cluster culled\n", lightsClusterCulled );

	/* radiosity */
	b = 1;
	bt = bounce;
	while ( bounce > 0 )
	{
		/* store off the bsp between bounces */
		FUNC11();
		FUNC13( "Writing %s\n", source );
		FUNC19( source );

		/* note it */
		FUNC13( "\n--- Radiosity (bounce %d of %d) ---\n", b, bt );

		/* flag bouncing */
		bouncing = qtrue;
		FUNC15( ambientColor );

		/* generate diffuse lights */
		FUNC5();
		FUNC4();

		/* setup light envelopes */
		FUNC7( qfalse, fastbounce );
		if ( numLights == 0 ) {
			FUNC13( "No diffuse light to calculate, ending radiosity.\n" );
			return;
		}

		/* add to lightgrid */
		if ( bouncegrid ) {
			gridEnvelopeCulled = 0;
			gridBoundsCulled = 0;

			FUNC13( "--- BounceGrid ---\n" );
			FUNC6( numRawGridPoints, qtrue, TraceGrid );
			FUNC12( SYS_VRB, "%9d grid points envelope culled\n", gridEnvelopeCulled );
			FUNC12( SYS_VRB, "%9d grid points bounds culled\n", gridBoundsCulled );
		}

		/* light up my world */
		lightsPlaneCulled = 0;
		lightsEnvelopeCulled = 0;
		lightsBoundsCulled = 0;
		lightsClusterCulled = 0;

		FUNC13( "--- IlluminateRawLightmap ---\n" );
		FUNC6( numRawLightmaps, qtrue, IlluminateRawLightmap );
		FUNC13( "%9d luxels illuminated\n", numLuxelsIlluminated );
		FUNC13( "%9d vertexes illuminated\n", numVertsIlluminated );

		FUNC10();

		FUNC13( "--- IlluminateVertexes ---\n" );
		FUNC6( numBSPDrawSurfaces, qtrue, IlluminateVertexes );
		FUNC13( "%9d vertexes illuminated\n", numVertsIlluminated );

		/* ydnar: emit statistics on light culling */
		FUNC12( SYS_VRB, "%9d lights plane culled\n", lightsPlaneCulled );
		FUNC12( SYS_VRB, "%9d lights envelope culled\n", lightsEnvelopeCulled );
		FUNC12( SYS_VRB, "%9d lights bounds culled\n", lightsBoundsCulled );
		FUNC12( SYS_VRB, "%9d lights cluster culled\n", lightsClusterCulled );

		/* interate */
		bounce--;
		b++;
	}
	/* ydnar: store off lightmaps */
	FUNC11();

}