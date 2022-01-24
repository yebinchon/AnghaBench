#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int numpoints; int /*<<< orphan*/ * p; } ;
typedef  TYPE_2__ winding_t ;
struct TYPE_17__ {int /*<<< orphan*/  headnode; } ;
typedef  TYPE_3__ tree_t ;
struct TYPE_18__ {int width; int height; TYPE_1__* verts; } ;
typedef  TYPE_4__ mesh_t ;
struct TYPE_19__ {int patchWidth; int patchHeight; TYPE_1__* verts; } ;
typedef  TYPE_5__ mapDrawSurface_t ;
struct TYPE_15__ {int /*<<< orphan*/  xyz; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FILTER_SUBDIVISION ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 TYPE_4__* FUNC4 (TYPE_4__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6( mapDrawSurface_t *ds, tree_t *tree ){
	int i, x, y, refs;
	mesh_t src, *mesh;
	winding_t           *w;


	/* subdivide the surface */
	src.width = ds->patchWidth;
	src.height = ds->patchHeight;
	src.verts = ds->verts;
	mesh = FUNC4( src, FILTER_SUBDIVISION, 32 );


	/* filter each quad into the tree (fixme: use new patch x-triangulation code?) */
	refs = 0;
	for ( y = 0; y < ( mesh->height - 1 ); y++ )
	{
		for ( x = 0; x < ( mesh->width - 1 ); x++ )
		{
			/* triangle 1 */
			w = FUNC0( 3 );
			w->numpoints = 3;
			FUNC5( mesh->verts[ y * mesh->width + x ].xyz, w->p[ 0 ] );
			FUNC5( mesh->verts[ y * mesh->width + x + 1 ].xyz, w->p[ 1 ] );
			FUNC5( mesh->verts[ ( y + 1 ) * mesh->width + x ].xyz, w->p[ 2 ] );
			refs += FUNC2( w, ds, tree->headnode );

			/* triangle 2 */
			w = FUNC0( 3 );
			w->numpoints = 3;
			FUNC5( mesh->verts[ y * mesh->width + x + 1 ].xyz, w->p[ 0 ] );
			FUNC5( mesh->verts[ ( y + 1 ) * mesh->width + x + 1 ].xyz, w->p[ 1 ] );
			FUNC5( mesh->verts[ ( y + 1 ) * mesh->width + x ].xyz, w->p[ 2 ] );
			refs += FUNC2( w, ds, tree->headnode );
		}
	}

	/* use point filtering as well */
	for ( i = 0; i < ( mesh->width * mesh->height ); i++ )
		refs += FUNC1( mesh->verts[ i ].xyz, ds, tree->headnode );

	/* free the subdivided mesh and return */
	FUNC3( mesh );
	return refs;
}