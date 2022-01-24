#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
struct TYPE_3__ {int sw; int sh; int /*<<< orphan*/  lightClusters; int /*<<< orphan*/  numLightClusters; } ;
typedef  TYPE_1__ rawLightmap_t ;
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 int FUNC0 (float*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int LUXEL_EPSILON ; 
 int* FUNC1 (int,int) ; 
 float* FUNC2 (int,int) ; 
 float* FUNC3 (int,int) ; 
 int /*<<< orphan*/  SYS_WRN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (float*) ; 
 int /*<<< orphan*/  FUNC6 (float*,float*) ; 
 int /*<<< orphan*/  FUNC7 (float*,float*,float*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

__attribute__((used)) static qboolean FUNC8( rawLightmap_t *lm, int x, int y, float bx, float by, int *sampleCluster, vec3_t sampleOrigin, vec3_t sampleNormal ){
	int i, *cluster, *cluster2;
	float       *origin, *origin2, *normal;
	vec3_t originVecs[ 2 ];

	/* calulate x vector */
	if ( ( x < ( lm->sw - 1 ) && bx >= 0.0f ) || ( x == 0 && bx <= 0.0f ) ) {
		cluster = FUNC1( x, y );
		origin = FUNC3( x, y );
		cluster2 = FUNC1( x + 1, y );
		origin2 = *cluster2 < 0 ? FUNC3( x, y ) : FUNC3( x + 1, y );
	}
	else if ( ( x > 0 && bx <= 0.0f ) || ( x == ( lm->sw - 1 ) && bx >= 0.0f ) ) {
		cluster = FUNC1( x - 1, y );
		origin = *cluster < 0 ? FUNC3( x, y ) : FUNC3( x - 1, y );
		cluster2 = FUNC1( x, y );
		origin2 = FUNC3( x, y );
	}
	else{
		FUNC4( SYS_WRN, "WARNING: Spurious lightmap S vector\n" );
		FUNC5( originVecs[0] );
		origin = originVecs[0];
		origin2 = originVecs[0];
	}

	FUNC7( origin2, origin, originVecs[ 0 ] );

	/* calulate y vector */
	if ( ( y < ( lm->sh - 1 ) && bx >= 0.0f ) || ( y == 0 && bx <= 0.0f ) ) {
		cluster = FUNC1( x, y );
		origin = FUNC3( x, y );
		cluster2 = FUNC1( x, y + 1 );
		origin2 = *cluster2 < 0 ? FUNC3( x, y ) : FUNC3( x, y + 1 );
	}
	else if ( ( y > 0 && bx <= 0.0f ) || ( y == ( lm->sh - 1 ) && bx >= 0.0f ) ) {
		cluster = FUNC1( x, y - 1 );
		origin = *cluster < 0 ? FUNC3( x, y ) : FUNC3( x, y - 1 );
		cluster2 = FUNC1( x, y );
		origin2 = FUNC3( x, y );
	}
	else{
		FUNC4( SYS_WRN, "WARNING: Spurious lightmap T vector\n" );
		FUNC5( originVecs[1] );
		origin = originVecs[1];
		origin2 = originVecs[1];
	}

	FUNC7( origin2, origin, originVecs[ 1 ] );

	/* calculate new origin */
	for ( i = 0; i < 3; i++ )
		sampleOrigin[ i ] = sampleOrigin[ i ] + ( bx * originVecs[ 0 ][ i ] ) + ( by * originVecs[ 1 ][ i ] );

	/* get cluster */
	*sampleCluster = FUNC0( sampleOrigin, ( LUXEL_EPSILON * 2 ), lm->numLightClusters, lm->lightClusters );
	if ( *sampleCluster < 0 ) {
		return qfalse;
	}

	/* calculate new normal */
	normal = FUNC2( x, y );
	FUNC6( normal, sampleNormal );

	/* return ok */
	return qtrue;
}