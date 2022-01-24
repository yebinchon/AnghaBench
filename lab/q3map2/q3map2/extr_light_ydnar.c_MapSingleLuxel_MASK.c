#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec4_t ;
typedef  float* vec3_t ;
struct TYPE_10__ {int numSurfaceClusters; size_t firstSurfaceCluster; TYPE_2__* si; } ;
typedef  TYPE_1__ surfaceInfo_t ;
struct TYPE_11__ {float lightmapSampleOffset; } ;
typedef  TYPE_2__ shaderInfo_t ;
struct TYPE_12__ {int sw; int sh; float* plane; int** vecs; float* origin; int axisNum; } ;
typedef  TYPE_3__ rawLightmap_t ;
struct TYPE_13__ {int** lightmap; float* normal; float* xyz; } ;
typedef  TYPE_4__ bspDrawVert_t ;

/* Variables and functions */
#define  BOGUS_NUDGE 129 
 int CLUSTER_OCCLUDED ; 
 int FUNC0 (float*,int /*<<< orphan*/ ,int,int*) ; 
 float DEFAULT_LIGHTMAP_SAMPLE_OFFSET ; 
 float FUNC1 (float*,float*) ; 
 int /*<<< orphan*/  LUXEL_EPSILON ; 
 int /*<<< orphan*/  FUNC2 (float*,float*,float*) ; 
#define  NUDGE 128 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_2__*,float*,float**,float**) ; 
 int* FUNC4 (int,int) ; 
 float* FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 float* FUNC6 (int,int) ; 
 float* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC9 (float*) ; 
 int /*<<< orphan*/  FUNC10 (float*,float*) ; 
 int /*<<< orphan*/  FUNC11 (float*,float,float*,float*) ; 
 scalar_t__ dark ; 
 int /*<<< orphan*/  master_mutex ; 
 int /*<<< orphan*/  numLuxelsMapped ; 
 int /*<<< orphan*/  numLuxelsOccluded ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ qfalse ; 
 int* surfaceClusters ; 

__attribute__((used)) static int FUNC14( rawLightmap_t *lm, surfaceInfo_t *info, bspDrawVert_t *dv, vec4_t plane, float pass, vec3_t stv[ 3 ], vec3_t ttv[ 3 ] ){
	int i, x, y, numClusters, *clusters, pointCluster, *cluster;
	float           *luxel, *origin, *normal, d, lightmapSampleOffset;
	shaderInfo_t    *si;
	vec3_t pNormal;
	vec3_t vecs[ 3 ];
	vec3_t nudged;
	float           *nudge;
	static float nudges[][ 2 ] =
	{
		//%{ 0, 0 },		/* try center first */
		{ -NUDGE, 0 },                      /* left */
		{ NUDGE, 0 },                       /* right */
		{ 0, NUDGE },                       /* up */
		{ 0, -NUDGE },                      /* down */
		{ -NUDGE, NUDGE },                  /* left/up */
		{ NUDGE, -NUDGE },                  /* right/down */
		{ NUDGE, NUDGE },                   /* right/up */
		{ -NUDGE, -NUDGE },                 /* left/down */
		{ BOGUS_NUDGE, BOGUS_NUDGE }
	};


	/* find luxel xy coords (fixme: subtract 0.5?) */
	x = dv->lightmap[ 0 ][ 0 ];
	y = dv->lightmap[ 0 ][ 1 ];
	if ( x < 0 ) {
		x = 0;
	}
	else if ( x >= lm->sw ) {
		x = lm->sw - 1;
	}
	if ( y < 0 ) {
		y = 0;
	}
	else if ( y >= lm->sh ) {
		y = lm->sh - 1;
	}

	/* set shader and cluster list */
	if ( info != NULL ) {
		si = info->si;
		numClusters = info->numSurfaceClusters;
		clusters = &surfaceClusters[ info->firstSurfaceCluster ];
	}
	else
	{
		si = NULL;
		numClusters = 0;
		clusters = NULL;
	}

	/* get luxel, origin, cluster, and normal */
	luxel = FUNC5( 0, x, y );
	origin = FUNC7( x, y );
	normal = FUNC6( x, y );
	cluster = FUNC4( x, y );

	/* don't attempt to remap occluded luxels for planar surfaces */
	if ( ( *cluster ) == CLUSTER_OCCLUDED && lm->plane != NULL ) {
		return ( *cluster );
	}

	/* only average the normal for premapped luxels */
	else if ( ( *cluster ) >= 0 ) {
		/* do bumpmap calculations */
		if ( stv != NULL ) {
			FUNC3( dv, si, pNormal, stv, ttv );
		}
		else{
			FUNC10( dv->normal, pNormal );
		}

		/* add the additional normal data */
		FUNC8( normal, pNormal, normal );
		luxel[ 3 ] += 1.0f;
		return ( *cluster );
	}

	/* otherwise, unmapped luxels (*cluster == CLUSTER_UNMAPPED) will have their full attributes calculated */

	/* get origin */

	/* axial lightmap projection */
	if ( lm->vecs != NULL ) {
		/* calculate an origin for the sample from the lightmap vectors */
		FUNC10( lm->origin, origin );
		for ( i = 0; i < 3; i++ )
		{
			/* add unless it's the axis, which is taken care of later */
			if ( i == lm->axisNum ) {
				continue;
			}
			origin[ i ] += ( x * lm->vecs[ 0 ][ i ] ) + ( y * lm->vecs[ 1 ][ i ] );
		}

		/* project the origin onto the plane */
		d = FUNC1( origin, plane ) - plane[ 3 ];
		d /= plane[ lm->axisNum ];
		origin[ lm->axisNum ] -= d;
	}

	/* non axial lightmap projection (explicit xyz) */
	else{
		FUNC10( dv->xyz, origin );
	}

	/* planar surfaces have precalculated lightmap vectors for nudging */
	if ( lm->plane != NULL ) {
		FUNC10( lm->vecs[ 0 ], vecs[ 0 ] );
		FUNC10( lm->vecs[ 1 ], vecs[ 1 ] );
		FUNC10( lm->plane, vecs[ 2 ] );
	}

	/* non-planar surfaces must calculate them */
	else
	{
		if ( plane != NULL ) {
			FUNC10( plane, vecs[ 2 ] );
		}
		else{
			FUNC10( dv->normal, vecs[ 2 ] );
		}
		FUNC2( vecs[ 2 ], vecs[ 0 ], vecs[ 1 ] );
	}

	/* push the origin off the surface a bit */
	if ( si != NULL ) {
		lightmapSampleOffset = si->lightmapSampleOffset;
	}
	else{
		lightmapSampleOffset = DEFAULT_LIGHTMAP_SAMPLE_OFFSET;
	}
	if ( lm->axisNum < 0 ) {
		FUNC11( origin, lightmapSampleOffset, vecs[ 2 ], origin );
	}
	else if ( vecs[ 2 ][ lm->axisNum ] < 0.0f ) {
		origin[ lm->axisNum ] -= lightmapSampleOffset;
	}
	else{
		origin[ lm->axisNum ] += lightmapSampleOffset;
	}

	/* get cluster */
	pointCluster = FUNC0( origin, LUXEL_EPSILON, numClusters, clusters );

	/* another retarded hack, storing nudge count in luxel[ 1 ] */
	luxel[ 1 ] = 0.0f;

	/* point in solid? (except in dark mode) */
	if ( pointCluster < 0 && dark == qfalse ) {
		/* nudge the the location around */
		nudge = nudges[ 0 ];
		while ( nudge[ 0 ] > BOGUS_NUDGE && pointCluster < 0 )
		{
			/* nudge the vector around a bit */
			for ( i = 0; i < 3; i++ )
			{
				/* set nudged point*/
				nudged[ i ] = origin[ i ] + ( nudge[ 0 ] * vecs[ 0 ][ i ] ) + ( nudge[ 1 ] * vecs[ 1 ][ i ] );
			}
			nudge += 2;

			/* get pvs cluster */
			pointCluster = FUNC0( nudged, LUXEL_EPSILON, numClusters, clusters ); //% + 0.625 );
			if ( pointCluster >= 0 ) {
				FUNC10( nudged, origin );
			}
			luxel[ 1 ] += 1.0f;
		}
	}

	/* as a last resort, if still in solid, try drawvert origin offset by normal (except in dark mode) */
	if ( pointCluster < 0 && si != NULL && dark == qfalse ) {
		FUNC11( dv->xyz, lightmapSampleOffset, dv->normal, nudged );
		pointCluster = FUNC0( nudged, LUXEL_EPSILON, numClusters, clusters );
		if ( pointCluster >= 0 ) {
			FUNC10( nudged, origin );
		}
		luxel[ 1 ] += 1.0f;
	}

	/* valid? */
	if ( pointCluster < 0 ) {
		( *cluster ) = CLUSTER_OCCLUDED;
		FUNC9( origin );
		FUNC9( normal );
		FUNC12( &master_mutex );
		numLuxelsOccluded++;
		FUNC13( &master_mutex );
		return ( *cluster );
	}

	/* debug code */
	//%	Sys_Printf( "%f %f %f\n", origin[ 0 ], origin[ 1 ], origin[ 2 ] );

	/* do bumpmap calculations */
	if ( stv ) {
		FUNC3( dv, si, pNormal, stv, ttv );
	}
	else{
		FUNC10( dv->normal, pNormal );
	}

	/* store the cluster and normal */
	( *cluster ) = pointCluster;
	FUNC10( pNormal, normal );

	/* store explicit mapping pass and implicit mapping pass */
	luxel[ 0 ] = pass;
	luxel[ 3 ] = 1.0f;

	/* add to count */
	FUNC12( &master_mutex );
	numLuxelsMapped++;
	FUNC13( &master_mutex );

	/* return ok */
	return ( *cluster );
}