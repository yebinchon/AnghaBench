#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec4_t ;
typedef  int /*<<< orphan*/ * vec3_t ;
typedef  int /*<<< orphan*/  shaderInfo_t ;
struct TYPE_10__ {int numPlanes; int radius; int radius2; int /*<<< orphan*/ ** planes; int /*<<< orphan*/ * center; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; int /*<<< orphan*/ * si; } ;
typedef  TYPE_1__ decalProjector_t ;
struct TYPE_11__ {int /*<<< orphan*/ * xyz; } ;
typedef  TYPE_2__ bspDrawVert_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t MAX_PROJECTORS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_WRN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,float,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,float,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 size_t numProjectors ; 
 TYPE_1__* projectors ; 
 int /*<<< orphan*/  vec3_origin ; 

__attribute__((used)) static int FUNC12( shaderInfo_t *si, vec4_t projection, float distance, int numVerts, bspDrawVert_t **dv ){
	int i, j;
	decalProjector_t    *dp;
	vec3_t xyz;


	/* dummy check */
	if ( numVerts != 3 && numVerts != 4 ) {
		return -1;
	}

	/* limit check */
	if ( numProjectors >= MAX_PROJECTORS ) {
		FUNC5( SYS_WRN, "WARNING: MAX_PROJECTORS (%d) exceeded, no more decal projectors available.\n", MAX_PROJECTORS );
		return -2;
	}

	/* create a new projector */
	dp = &projectors[ numProjectors ];
	FUNC11( dp, 0, sizeof( *dp ) );

	/* basic setup */
	dp->si = si;
	dp->numPlanes = numVerts + 2;

	/* make texture matrix */
	if ( !FUNC3( dp, projection, dv[ 0 ], dv[ 1 ], dv[ 2 ] ) ) {
		return -1;
	}

	/* bound the projector */
	FUNC1( dp->mins, dp->maxs );
	for ( i = 0; i < numVerts; i++ )
	{
		FUNC0( dv[ i ]->xyz, dp->mins, dp->maxs );
		FUNC8( dv[ i ]->xyz, distance, projection, xyz );
		FUNC0( xyz, dp->mins, dp->maxs );
	}

	/* make bouding sphere */
	FUNC6( dp->mins, dp->maxs, dp->center );
	FUNC9( dp->center, 0.5f, dp->center );
	FUNC10( dp->maxs, dp->center, xyz );
	dp->radius = FUNC7( xyz );
	dp->radius2 = dp->radius * dp->radius;

	/* make the front plane */
	if ( !FUNC4( dp->planes[ 0 ], dv[ 0 ]->xyz, dv[ 1 ]->xyz, dv[ 2 ]->xyz ) ) {
		return -1;
	}

	/* make the back plane */
	FUNC10( vec3_origin, dp->planes[ 0 ], dp->planes[ 1 ] );
	FUNC8( dv[ 0 ]->xyz, distance, projection, xyz );
	dp->planes[ 1 ][ 3 ] = FUNC2( xyz, dp->planes[ 1 ] );

	/* make the side planes */
	for ( i = 0; i < numVerts; i++ )
	{
		j = ( i + 1 ) % numVerts;
		FUNC8( dv[ i ]->xyz, distance, projection, xyz );
		if ( !FUNC4( dp->planes[ i + 2 ], dv[ j ]->xyz, dv[ i ]->xyz, xyz ) ) {
			return -1;
		}
	}

	/* return ok */
	numProjectors++;
	return numProjectors - 1;
}