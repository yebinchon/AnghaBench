#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rawLightmap_t ;
typedef  scalar_t__ qboolean ;
struct TYPE_9__ {float** lightmap; } ;
typedef  TYPE_1__ bspDrawVert_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,TYPE_1__**) ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 float FUNC3 (float) ; 
 float subdivideThreshold ; 

__attribute__((used)) static qboolean FUNC4( rawLightmap_t *lm, bspDrawVert_t *dv[ 3 ] ){
	bspDrawVert_t mid, *dv2[ 3 ];
	int max;


	/* approximate the vertexes */
	if ( FUNC0( lm, dv[ 0 ] ) == qfalse ) {
		return qfalse;
	}
	if ( FUNC0( lm, dv[ 1 ] ) == qfalse ) {
		return qfalse;
	}
	if ( FUNC0( lm, dv[ 2 ] ) == qfalse ) {
		return qfalse;
	}

	/* subdivide calc */
	{
		int i;
		float dx, dy, dist, maxDist;


		/* find the longest edge and split it */
		max = -1;
		maxDist = 0;
		for ( i = 0; i < 3; i++ )
		{
			dx = dv[ i ]->lightmap[ 0 ][ 0 ] - dv[ ( i + 1 ) % 3 ]->lightmap[ 0 ][ 0 ];
			dy = dv[ i ]->lightmap[ 0 ][ 1 ] - dv[ ( i + 1 ) % 3 ]->lightmap[ 0 ][ 1 ];
			dist = FUNC3( ( dx * dx ) + ( dy * dy ) );
			if ( dist > maxDist ) {
				maxDist = dist;
				max = i;
			}
		}

		/* try to early out */
		if ( i < 0 || maxDist < subdivideThreshold ) {
			return qtrue;
		}
	}

	/* split the longest edge and map it */
	FUNC1( dv[ max ], dv[ ( max + 1 ) % 3 ], &mid );
	if ( FUNC0( lm, &mid ) == qfalse ) {
		return qfalse;
	}

	/* recurse to first triangle */
	FUNC2( dv, dv2 );
	dv2[ max ] = &mid;
	if ( FUNC4( lm, dv2 ) == qfalse ) {
		return qfalse;
	}

	/* recurse to second triangle */
	FUNC2( dv, dv2 );
	dv2[ ( max + 1 ) % 3 ] = &mid;
	return FUNC4( lm, dv2 );
}