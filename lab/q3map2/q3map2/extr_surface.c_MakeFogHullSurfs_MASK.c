#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
typedef  int /*<<< orphan*/  tree_t ;
typedef  int /*<<< orphan*/  shaderInfo_t ;
struct TYPE_5__ {int fogNum; int numVerts; int numIndexes; TYPE_2__* indexes; TYPE_2__* verts; int /*<<< orphan*/ * shaderInfo; } ;
typedef  TYPE_1__ mapDrawSurface_t ;
typedef  int /*<<< orphan*/  entity_t ;
struct TYPE_6__ {int /*<<< orphan*/  xyz; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SURFACE_FOGHULL ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  mapMaxs ; 
 int /*<<< orphan*/  mapMins ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC7 (int) ; 

void FUNC8( entity_t *e, tree_t *tree, char *shader ){
	shaderInfo_t        *si;
	mapDrawSurface_t    *ds;
	vec3_t fogMins, fogMaxs;
	int i, indexes[] =
	{
		0, 1, 2, 0, 2, 3,
		4, 7, 5, 5, 7, 6,
		1, 5, 6, 1, 6, 2,
		0, 4, 5, 0, 5, 1,
		2, 6, 7, 2, 7, 3,
		3, 7, 4, 3, 4, 0
	};


	/* dummy check */
	if ( shader == NULL || shader[ 0 ] == '\0' ) {
		return;
	}

	/* note it */
	FUNC2( SYS_VRB, "--- MakeFogHullSurfs ---\n" );

	/* get hull bounds */
	FUNC3( mapMins, fogMins );
	FUNC3( mapMaxs, fogMaxs );
	for ( i = 0; i < 3; i++ )
	{
		fogMins[ i ] -= 128;
		fogMaxs[ i ] += 128;
	}

	/* get foghull shader */
	si = FUNC1( shader );

	/* allocate a drawsurface */
	ds = FUNC0( SURFACE_FOGHULL );
	ds->shaderInfo = si;
	ds->fogNum = -1;
	ds->numVerts = 8;
	ds->verts = FUNC7( ds->numVerts * sizeof( *ds->verts ) );
	FUNC6( ds->verts, 0, ds->numVerts * sizeof( *ds->verts ) );
	ds->numIndexes = 36;
	ds->indexes = FUNC7( ds->numIndexes * sizeof( *ds->indexes ) );
	FUNC6( ds->indexes, 0, ds->numIndexes * sizeof( *ds->indexes ) );

	/* set verts */
	FUNC4( ds->verts[ 0 ].xyz, fogMins[ 0 ], fogMins[ 1 ], fogMins[ 2 ] );
	FUNC4( ds->verts[ 1 ].xyz, fogMins[ 0 ], fogMaxs[ 1 ], fogMins[ 2 ] );
	FUNC4( ds->verts[ 2 ].xyz, fogMaxs[ 0 ], fogMaxs[ 1 ], fogMins[ 2 ] );
	FUNC4( ds->verts[ 3 ].xyz, fogMaxs[ 0 ], fogMins[ 1 ], fogMins[ 2 ] );

	FUNC4( ds->verts[ 4 ].xyz, fogMins[ 0 ], fogMins[ 1 ], fogMaxs[ 2 ] );
	FUNC4( ds->verts[ 5 ].xyz, fogMins[ 0 ], fogMaxs[ 1 ], fogMaxs[ 2 ] );
	FUNC4( ds->verts[ 6 ].xyz, fogMaxs[ 0 ], fogMaxs[ 1 ], fogMaxs[ 2 ] );
	FUNC4( ds->verts[ 7 ].xyz, fogMaxs[ 0 ], fogMins[ 1 ], fogMaxs[ 2 ] );

	/* set indexes */
	FUNC5( ds->indexes, indexes, ds->numIndexes * sizeof( *ds->indexes ) );
}