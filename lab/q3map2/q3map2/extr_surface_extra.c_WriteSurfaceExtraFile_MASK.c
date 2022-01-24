#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int parentSurfaceNum; int entityNum; int castShadows; int recvShadows; int sampleSize; double longestCurve; double* lightmapAxis; TYPE_2__* si; TYPE_1__* mds; } ;
typedef  TYPE_3__ surfaceExtra_t ;
struct TYPE_7__ {char* shader; } ;
struct TYPE_6__ {size_t type; int numVerts; int numIndexes; scalar_t__ planar; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 TYPE_3__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (double*,double*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 int numSurfaceExtras ; 
 scalar_t__ qfalse ; 
 TYPE_3__ seDefault ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 char** surfaceTypes ; 

void FUNC10( const char *path ){
	char srfPath[ 1024 ];
	FILE            *sf;
	surfaceExtra_t  *se;
	int i;


	/* dummy check */
	if ( path == NULL || path[ 0 ] == '\0' ) {
		return;
	}

	/* note it */
	FUNC3( "--- WriteSurfaceExtraFile ---\n" );

	/* open the file */
	FUNC9( srfPath, path );
	FUNC2( srfPath );
	FUNC8( srfPath, ".srf" );
	FUNC3( "Writing %s\n", srfPath );
	sf = FUNC6( srfPath, "w" );
	if ( sf == NULL ) {
		FUNC0( "Error opening %s for writing", srfPath );
	}

	/* lap through the extras list */
	for ( i = -1; i < numSurfaceExtras; i++ )
	{
		/* get extra */
		se = FUNC1( i );

		/* default or surface num? */
		if ( i < 0 ) {
			FUNC7( sf, "default" );
		}
		else{
			FUNC7( sf, "%d", i );
		}

		/* valid map drawsurf? */
		if ( se->mds == NULL ) {
			FUNC7( sf, "\n" );
		}
		else
		{
			FUNC7( sf, " // %s V: %d I: %d %s\n",
					 surfaceTypes[ se->mds->type ],
					 se->mds->numVerts,
					 se->mds->numIndexes,
					 ( se->mds->planar ? "planar" : "" ) );
		}

		/* open braces */
		FUNC7( sf, "{\n" );

		/* shader */
		if ( se->si != NULL ) {
			FUNC7( sf, "\tshader %s\n", se->si->shader );
		}

		/* parent surface number */
		if ( se->parentSurfaceNum != seDefault.parentSurfaceNum ) {
			FUNC7( sf, "\tparent %d\n", se->parentSurfaceNum );
		}

		/* entity number */
		if ( se->entityNum != seDefault.entityNum ) {
			FUNC7( sf, "\tentity %d\n", se->entityNum );
		}

		/* cast shadows */
		if ( se->castShadows != seDefault.castShadows || se == &seDefault ) {
			FUNC7( sf, "\tcastShadows %d\n", se->castShadows );
		}

		/* recv shadows */
		if ( se->recvShadows != seDefault.recvShadows || se == &seDefault ) {
			FUNC7( sf, "\treceiveShadows %d\n", se->recvShadows );
		}

		/* lightmap sample size */
		if ( se->sampleSize != seDefault.sampleSize || se == &seDefault ) {
			FUNC7( sf, "\tsampleSize %d\n", se->sampleSize );
		}

		/* longest curve */
		if ( se->longestCurve != seDefault.longestCurve || se == &seDefault ) {
			FUNC7( sf, "\tlongestCurve %f\n", se->longestCurve );
		}

		/* lightmap axis vector */
		if ( FUNC4( se->lightmapAxis, seDefault.lightmapAxis ) == qfalse ) {
			FUNC7( sf, "\tlightmapAxis ( %f %f %f )\n", se->lightmapAxis[ 0 ], se->lightmapAxis[ 1 ], se->lightmapAxis[ 2 ] );
		}

		/* close braces */
		FUNC7( sf, "}\n\n" );
	}

	/* close the file */
	FUNC5( sf );
}