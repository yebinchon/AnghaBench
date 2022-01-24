#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int numVerts; int patchHeight; int patchWidth; size_t outputNum; scalar_t__ planar; size_t type; int /*<<< orphan*/ * lightmapVecs; int /*<<< orphan*/ * bounds; int /*<<< orphan*/  lightmapOrigin; int /*<<< orphan*/  fogNum; TYPE_1__* shaderInfo; scalar_t__ sampleSize; int /*<<< orphan*/  lightmapAxis; TYPE_3__* verts; scalar_t__ backSide; } ;
typedef  TYPE_2__ mapDrawSurface_t ;
struct TYPE_16__ {int /*<<< orphan*/  normal; } ;
typedef  TYPE_3__ bspDrawVert_t ;
struct TYPE_17__ {int patchWidth; int patchHeight; int* lightmapNum; int /*<<< orphan*/ * lightmapVecs; int /*<<< orphan*/  lightmapOrigin; void** vertexStyles; void** lightmapStyles; int /*<<< orphan*/  fogNum; void* shaderNum; int /*<<< orphan*/  surfaceType; } ;
typedef  TYPE_4__ bspDrawSurface_t ;
struct TYPE_14__ {int surfaceFlags; int contentFlags; char* shader; scalar_t__ invert; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_4__*) ; 
 void* FUNC3 (char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 void* LS_NONE ; 
 void* LS_NORMAL ; 
 int MAX_LIGHTMAPS ; 
 size_t MAX_MAP_DRAW_SURFS ; 
 int /*<<< orphan*/  MST_PATCH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 TYPE_4__* bspDrawSurfaces ; 
 scalar_t__ debugSurfaces ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 size_t numBSPDrawSurfaces ; 
 int /*<<< orphan*/ * numSurfacesByType ; 
 scalar_t__ patchMeta ; 
 scalar_t__ qfalse ; 

void FUNC10( mapDrawSurface_t *ds ){
	int i, j;
	bspDrawSurface_t    *out;
	int surfaceFlags, contentFlags;


	/* invert the surface if necessary */
	if ( ds->backSide || ds->shaderInfo->invert ) {
		bspDrawVert_t   *dv1, *dv2, temp;


		/* walk the verts, flip the normal */
		for ( i = 0; i < ds->numVerts; i++ )
			FUNC7( ds->verts[ i ].normal, -1.0f, ds->verts[ i ].normal );

		/* walk the verts again, but this time reverse their order */
		for ( j = 0; j < ds->patchHeight; j++ )
		{
			for ( i = 0; i < ( ds->patchWidth / 2 ); i++ )
			{
				dv1 = &ds->verts[ j * ds->patchWidth + i ];
				dv2 = &ds->verts[ j * ds->patchWidth + ( ds->patchWidth - i - 1 ) ];
				FUNC8( &temp, dv1, sizeof( bspDrawVert_t ) );
				FUNC8( dv1, dv2, sizeof( bspDrawVert_t ) );
				FUNC8( dv2, &temp, sizeof( bspDrawVert_t ) );
			}
		}

		/* invert facing */
		FUNC7( ds->lightmapVecs[ 2 ], -1.0f, ds->lightmapVecs[ 2 ] );
	}

	/* allocate a new surface */
	if ( numBSPDrawSurfaces == MAX_MAP_DRAW_SURFS ) {
		FUNC4( "MAX_MAP_DRAW_SURFS" );
	}
	out = &bspDrawSurfaces[ numBSPDrawSurfaces ];
	ds->outputNum = numBSPDrawSurfaces;
	numBSPDrawSurfaces++;
	FUNC9( out, 0, sizeof( *out ) );

	/* set it up */
	out->surfaceType = MST_PATCH;
	if ( debugSurfaces ) {
		out->shaderNum = FUNC3( "debugsurfaces", NULL, NULL );
	}
	else if ( patchMeta ) {
		/* patch meta requires that we have nodraw patches for collision */
		surfaceFlags = ds->shaderInfo->surfaceFlags;
		contentFlags = ds->shaderInfo->contentFlags;
		FUNC0( "nodraw", &contentFlags, &surfaceFlags, NULL );
		FUNC0( "pointlight", &contentFlags, &surfaceFlags, NULL );

		/* we don't want this patch getting lightmapped */
		FUNC5( ds->lightmapVecs[ 2 ] );
		FUNC5( ds->lightmapAxis );
		ds->sampleSize = 0;

		/* emit the new fake shader */
		out->shaderNum = FUNC3( ds->shaderInfo->shader, &contentFlags, &surfaceFlags );
	}
	else{
		out->shaderNum = FUNC3( ds->shaderInfo->shader, &ds->shaderInfo->contentFlags, &ds->shaderInfo->surfaceFlags );
	}
	out->patchWidth = ds->patchWidth;
	out->patchHeight = ds->patchHeight;
	out->fogNum = ds->fogNum;

	/* RBSP */
	for ( i = 0; i < MAX_LIGHTMAPS; i++ )
	{
		out->lightmapNum[ i ] = -3;
		out->lightmapStyles[ i ] = LS_NONE;
		out->vertexStyles[ i ] = LS_NONE;
	}
	out->lightmapStyles[ 0 ] = LS_NORMAL;
	out->vertexStyles[ 0 ] = LS_NORMAL;

	/* ydnar: gs mods: previously, the lod bounds were stored in lightmapVecs[ 0 ] and [ 1 ], moved to bounds[ 0 ] and [ 1 ] */
	FUNC6( ds->lightmapOrigin, out->lightmapOrigin );
	FUNC6( ds->bounds[ 0 ], out->lightmapVecs[ 0 ] );
	FUNC6( ds->bounds[ 1 ], out->lightmapVecs[ 1 ] );
	FUNC6( ds->lightmapVecs[ 2 ], out->lightmapVecs[ 2 ] );

	/* ydnar: gs mods: clear out the plane normal */
	if ( ds->planar == qfalse ) {
		FUNC5( out->lightmapVecs[ 2 ] );
	}

	/* emit the verts and indexes */
	FUNC2( ds, out );
	FUNC1( ds, out );

	/* add to count */
	numSurfacesByType[ ds->type ]++;
}