#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_14__ {int numIndexes; int* indexes; int numVerts; size_t outputNum; size_t type; scalar_t__ planar; int /*<<< orphan*/ * lightmapVecs; int /*<<< orphan*/  lightmapOrigin; TYPE_3__* verts; int /*<<< orphan*/  fogNum; int /*<<< orphan*/  patchHeight; int /*<<< orphan*/  patchWidth; TYPE_1__* shaderInfo; int /*<<< orphan*/  lightmapAxis; scalar_t__ backSide; } ;
typedef  TYPE_2__ mapDrawSurface_t ;
struct TYPE_15__ {int /*<<< orphan*/  xyz; int /*<<< orphan*/  normal; } ;
typedef  TYPE_3__ bspDrawVert_t ;
struct TYPE_16__ {int* lightmapNum; int /*<<< orphan*/ * lightmapVecs; int /*<<< orphan*/  lightmapOrigin; void** vertexStyles; void** lightmapStyles; int /*<<< orphan*/  fogNum; int /*<<< orphan*/  patchHeight; int /*<<< orphan*/  patchWidth; void* shaderNum; int /*<<< orphan*/  surfaceType; } ;
typedef  TYPE_4__ bspDrawSurface_t ;
struct TYPE_13__ {char* shader; int /*<<< orphan*/  surfaceFlags; int /*<<< orphan*/  contentFlags; scalar_t__ invert; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_4__*) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* LS_NONE ; 
 void* LS_NORMAL ; 
 int MAX_LIGHTMAPS ; 
 size_t MAX_MAP_DRAW_SURFS ; 
 int /*<<< orphan*/  MST_FOLIAGE ; 
 int /*<<< orphan*/  MST_PLANAR ; 
 int /*<<< orphan*/  MST_TRIANGLE_SOUP ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 size_t SURFACE_FOGHULL ; 
 size_t SURFACE_FOLIAGE ; 
 size_t SURFACE_TRIANGLES ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* bspDrawSurfaces ; 
 scalar_t__ debugInset ; 
 scalar_t__ debugSurfaces ; 
 int maxLMSurfaceVerts ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 size_t numBSPDrawSurfaces ; 
 int /*<<< orphan*/ * numSurfacesByType ; 
 scalar_t__ qfalse ; 

__attribute__((used)) static void FUNC13( mapDrawSurface_t *ds ){
	int i, temp;
	bspDrawSurface_t        *out;


	/* invert the surface if necessary */
	if ( ds->backSide || ds->shaderInfo->invert ) {
		/* walk the indexes, reverse the triangle order */
		for ( i = 0; i < ds->numIndexes; i += 3 )
		{
			temp = ds->indexes[ i ];
			ds->indexes[ i ] = ds->indexes[ i + 1 ];
			ds->indexes[ i + 1 ] = temp;
		}

		/* walk the verts, flip the normal */
		for ( i = 0; i < ds->numVerts; i++ )
			FUNC10( ds->verts[ i ].normal, -1.0f, ds->verts[ i ].normal );

		/* invert facing */
		FUNC10( ds->lightmapVecs[ 2 ], -1.0f, ds->lightmapVecs[ 2 ] );
	}

	/* allocate a new surface */
	if ( numBSPDrawSurfaces == MAX_MAP_DRAW_SURFS ) {
		FUNC3( "MAX_MAP_DRAW_SURFS" );
	}
	out = &bspDrawSurfaces[ numBSPDrawSurfaces ];
	ds->outputNum = numBSPDrawSurfaces;
	numBSPDrawSurfaces++;
	FUNC12( out, 0, sizeof( *out ) );

	/* ydnar/sd: handle wolf et foliage surfaces */
	if ( ds->type == SURFACE_FOLIAGE ) {
		out->surfaceType = MST_FOLIAGE;
	}

	/* ydnar: gs mods: handle lightmapped terrain (force to planar type) */
	//%	else if( VectorLength( ds->lightmapAxis ) <= 0.0f || ds->type == SURFACE_TRIANGLES || ds->type == SURFACE_FOGHULL || debugSurfaces )
	else if ( ( FUNC8( ds->lightmapAxis ) <= 0.0f && ds->planar == qfalse ) ||
			  ds->type == SURFACE_TRIANGLES ||
			  ds->type == SURFACE_FOGHULL ||
			  ds->numVerts > maxLMSurfaceVerts ||
			  debugSurfaces ) {
		out->surfaceType = MST_TRIANGLE_SOUP;
	}

	/* set to a planar face */
	else{
		out->surfaceType = MST_PLANAR;
	}

	/* set it up */
	if ( debugSurfaces ) {
		out->shaderNum = FUNC2( "debugsurfaces", NULL, NULL );
	}
	else{
		out->shaderNum = FUNC2( ds->shaderInfo->shader, &ds->shaderInfo->contentFlags, &ds->shaderInfo->surfaceFlags );
	}
	out->patchWidth = ds->patchWidth;
	out->patchHeight = ds->patchHeight;
	out->fogNum = ds->fogNum;

	/* debug inset (push each triangle vertex towards the center of each triangle it is on */
	if ( debugInset ) {
		bspDrawVert_t   *a, *b, *c;
		vec3_t cent, dir;


		/* walk triangle list */
		for ( i = 0; i < ds->numIndexes; i += 3 )
		{
			/* get verts */
			a = &ds->verts[ ds->indexes[ i ] ];
			b = &ds->verts[ ds->indexes[ i + 1 ] ];
			c = &ds->verts[ ds->indexes[ i + 2 ] ];

			/* calculate centroid */
			FUNC7( a->xyz, cent );
			FUNC5( cent, b->xyz, cent );
			FUNC5( cent, c->xyz, cent );
			FUNC10( cent, 1.0f / 3.0f, cent );

			/* offset each vertex */
			FUNC11( cent, a->xyz, dir );
			FUNC9( dir, dir );
			FUNC5( a->xyz, dir, a->xyz );
			FUNC11( cent, b->xyz, dir );
			FUNC9( dir, dir );
			FUNC5( b->xyz, dir, b->xyz );
			FUNC11( cent, c->xyz, dir );
			FUNC9( dir, dir );
			FUNC5( c->xyz, dir, c->xyz );
		}
	}

	/* RBSP */
	for ( i = 0; i < MAX_LIGHTMAPS; i++ )
	{
		out->lightmapNum[ i ] = -3;
		out->lightmapStyles[ i ] = LS_NONE;
		out->vertexStyles[ i ] = LS_NONE;
	}
	out->lightmapStyles[ 0 ] = LS_NORMAL;
	out->vertexStyles[ 0 ] = LS_NORMAL;

	/* lightmap vectors (lod bounds for patches */
	FUNC7( ds->lightmapOrigin, out->lightmapOrigin );
	FUNC7( ds->lightmapVecs[ 0 ], out->lightmapVecs[ 0 ] );
	FUNC7( ds->lightmapVecs[ 1 ], out->lightmapVecs[ 1 ] );
	FUNC7( ds->lightmapVecs[ 2 ], out->lightmapVecs[ 2 ] );

	/* ydnar: gs mods: clear out the plane normal */
	if ( ds->planar == qfalse ) {
		FUNC6( out->lightmapVecs[ 2 ] );
	}

	/* optimize the surface's triangles */
	FUNC4( ds );

	/* emit the verts and indexes */
	FUNC1( ds, out );
	FUNC0( ds, out );

	/* add to count */
	numSurfacesByType[ ds->type ]++;
}