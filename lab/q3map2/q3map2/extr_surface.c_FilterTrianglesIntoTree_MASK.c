#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int numpoints; int /*<<< orphan*/ * p; } ;
typedef  TYPE_2__ winding_t ;
struct TYPE_13__ {int /*<<< orphan*/  headnode; } ;
typedef  TYPE_3__ tree_t ;
struct TYPE_14__ {int numIndexes; size_t* indexes; size_t numVerts; TYPE_1__* verts; } ;
typedef  TYPE_4__ mapDrawSurface_t ;
struct TYPE_11__ {int /*<<< orphan*/  xyz; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5( mapDrawSurface_t *ds, tree_t *tree ){
	int i, refs;
	winding_t   *w;


	/* ydnar: gs mods: this was creating bogus triangles before */
	refs = 0;
	for ( i = 0; i < ds->numIndexes; i += 3 )
	{
		/* error check */
		if ( ds->indexes[ i ] >= ds->numVerts ||
			 ds->indexes[ i + 1 ] >= ds->numVerts ||
			 ds->indexes[ i + 2 ] >= ds->numVerts ) {
			FUNC1( "Index %d greater than vertex count %d", ds->indexes[ i ], ds->numVerts );
		}

		/* make a triangle winding and filter it into the tree */
		w = FUNC0( 3 );
		w->numpoints = 3;
		FUNC4( ds->verts[ ds->indexes[ i ] ].xyz, w->p[ 0 ] );
		FUNC4( ds->verts[ ds->indexes[ i + 1 ] ].xyz, w->p[ 1 ] );
		FUNC4( ds->verts[ ds->indexes[ i + 2 ] ].xyz, w->p[ 2 ] );
		refs += FUNC3( w, ds, tree->headnode );
	}

	/* use point filtering as well */
	for ( i = 0; i < ds->numVerts; i++ )
		refs += FUNC2( ds->verts[ i ].xyz, ds, tree->headnode );

	return refs;
}