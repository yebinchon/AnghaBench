#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int width; int height; int /*<<< orphan*/  verts; } ;
typedef  TYPE_2__ mesh_t ;
struct TYPE_19__ {int numVerts; scalar_t__ type; int patchWidth; int patchHeight; int* indexes; scalar_t__ numIndexes; int /*<<< orphan*/  verts; TYPE_1__* shaderInfo; int /*<<< orphan*/  longestCurve; } ;
typedef  TYPE_3__ mapDrawSurface_t ;
struct TYPE_17__ {int compileFlags; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (scalar_t__) ; 
 int C_SOLID ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__) ; 
 TYPE_2__* FUNC6 (TYPE_2__*) ; 
 scalar_t__ SURFACE_META ; 
 scalar_t__ SURFACE_PATCH ; 
 TYPE_2__* FUNC7 (TYPE_2__,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  numPatchMetaSurfaces ; 
 scalar_t__ patchMeta ; 
 int /*<<< orphan*/  patchSubdivisions ; 
 scalar_t__ qfalse ; 
 int* FUNC10 (int) ; 

void FUNC11( mapDrawSurface_t *ds ){
	int iterations, x, y, pw[ 5 ], r;
	mapDrawSurface_t    *dsNew;
	mesh_t src, *subdivided, *mesh;


	/* try to early out */
	if ( ds->numVerts == 0 || ds->type != SURFACE_PATCH || patchMeta == qfalse ) {
		return;
	}

	/* make a mesh from the drawsurf */
	src.width = ds->patchWidth;
	src.height = ds->patchHeight;
	src.verts = ds->verts;
	//%	subdivided = SubdivideMesh( src, 8, 999 );
	iterations = FUNC4( ds->longestCurve, patchSubdivisions );
	subdivided = FUNC7( src, iterations ); //%	ds->maxIterations

	/* fit it to the curve and remove colinear verts on rows/columns */
	FUNC5( *subdivided );
	mesh = FUNC6( subdivided );
	FUNC3( subdivided );
	//% MakeMeshNormals( mesh );

	/* make a copy of the drawsurface */
	dsNew = FUNC0( SURFACE_META );
	FUNC9( dsNew, ds, sizeof( *ds ) );

	/* if the patch is nonsolid, then discard it */
	if ( !( ds->shaderInfo->compileFlags & C_SOLID ) ) {
		FUNC2( ds );
	}

	/* set new pointer */
	ds = dsNew;

	/* basic transmogrification */
	ds->type = SURFACE_META;
	ds->numIndexes = 0;
	ds->indexes = FUNC10( mesh->width * mesh->height * 6 * sizeof( int ) );

	/* copy the verts in */
	ds->numVerts = ( mesh->width * mesh->height );
	ds->verts = mesh->verts;

	/* iterate through the mesh quads */
	for ( y = 0; y < ( mesh->height - 1 ); y++ )
	{
		for ( x = 0; x < ( mesh->width - 1 ); x++ )
		{
			/* set indexes */
			pw[ 0 ] = x + ( y * mesh->width );
			pw[ 1 ] = x + ( ( y + 1 ) * mesh->width );
			pw[ 2 ] = x + 1 + ( ( y + 1 ) * mesh->width );
			pw[ 3 ] = x + 1 + ( y * mesh->width );
			pw[ 4 ] = x + ( y * mesh->width );    /* same as pw[ 0 ] */

			/* set radix */
			r = ( x + y ) & 1;

			/* make first triangle */
			ds->indexes[ ds->numIndexes++ ] = pw[ r + 0 ];
			ds->indexes[ ds->numIndexes++ ] = pw[ r + 1 ];
			ds->indexes[ ds->numIndexes++ ] = pw[ r + 2 ];

			/* make second triangle */
			ds->indexes[ ds->numIndexes++ ] = pw[ r + 0 ];
			ds->indexes[ ds->numIndexes++ ] = pw[ r + 2 ];
			ds->indexes[ ds->numIndexes++ ] = pw[ r + 3 ];
		}
	}

	/* free the mesh, but not the verts */
	FUNC8( mesh );

	/* add to count */
	numPatchMetaSurfaces++;

	/* classify it */
	FUNC1( 1, ds );
}