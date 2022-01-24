#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int numVerts; int /*<<< orphan*/ * lightmapVecs; TYPE_1__* verts; struct TYPE_8__* parent; int /*<<< orphan*/  shaderInfo; } ;
typedef  TYPE_2__ mapDrawSurface_t ;
struct TYPE_7__ {int /*<<< orphan*/  xyz; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  skyboxTransform ; 

mapDrawSurface_t *FUNC3( mapDrawSurface_t *src ){
	int i;
	mapDrawSurface_t    *ds;


	/* dummy check */
	if ( src == NULL ) {
		return NULL;
	}

	/* make a copy */
	ds = FUNC0( src, src->shaderInfo );
	if ( ds == NULL ) {
		return NULL;
	}

	/* set parent */
	ds->parent = src;

	/* scale the surface vertexes */
	for ( i = 0; i < ds->numVerts; i++ )
	{
		FUNC2( skyboxTransform, ds->verts[ i ].xyz );

		/* debug code */
		//%	bspDrawVerts[ bspDrawSurfaces[ ds->outputNum ].firstVert + i ].color[ 0 ][ 1 ] = 0;
		//%	bspDrawVerts[ bspDrawSurfaces[ ds->outputNum ].firstVert + i ].color[ 0 ][ 2 ] = 0;
	}

	/* so backface culling creep doesn't bork the surface */
	FUNC1( ds->lightmapVecs[ 2 ] );

	/* return the surface */
	return ds;
}