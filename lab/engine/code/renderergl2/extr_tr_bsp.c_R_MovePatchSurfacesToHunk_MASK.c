#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  srfVert_t ;
struct TYPE_6__ {scalar_t__ surfaceType; int width; int height; int numIndexes; int numVerts; void* verts; void* indexes; void* heightLodError; void* widthLodError; } ;
typedef  TYPE_2__ srfBspSurface_t ;
typedef  int /*<<< orphan*/  glIndex_t ;
struct TYPE_8__ {int /*<<< orphan*/  (* Free ) (void*) ;void* (* Hunk_Alloc ) (int,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int numsurfaces; TYPE_1__* surfaces; } ;
struct TYPE_5__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,int) ; 
 scalar_t__ SF_GRID ; 
 int /*<<< orphan*/  h_low ; 
 TYPE_4__ ri ; 
 TYPE_3__ s_worldData ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

void FUNC9(void) {
	int i;
	srfBspSurface_t *grid;

	for ( i = 0; i < s_worldData.numsurfaces; i++ ) {
		void *copyFrom;
		//
		grid = (srfBspSurface_t *) s_worldData.surfaces[i].data;
		// if this surface is not a grid
		if ( grid->surfaceType != SF_GRID )
			continue;
		//

		copyFrom = grid->widthLodError;
		grid->widthLodError = ri.Hunk_Alloc( grid->width * 4, h_low );
		FUNC0(grid->widthLodError, copyFrom, grid->width * 4);
		ri.Free(copyFrom);

		copyFrom = grid->heightLodError;
		grid->heightLodError = ri.Hunk_Alloc(grid->height * 4, h_low);
		FUNC0(grid->heightLodError, copyFrom, grid->height * 4);
		ri.Free(copyFrom);

		copyFrom = grid->indexes;
		grid->indexes = ri.Hunk_Alloc(grid->numIndexes * sizeof(glIndex_t), h_low);
		FUNC0(grid->indexes, copyFrom, grid->numIndexes * sizeof(glIndex_t));
		ri.Free(copyFrom);

		copyFrom = grid->verts;
		grid->verts = ri.Hunk_Alloc(grid->numVerts * sizeof(srfVert_t), h_low);
		FUNC0(grid->verts, copyFrom, grid->numVerts * sizeof(srfVert_t));
		ri.Free(copyFrom);
	}
}