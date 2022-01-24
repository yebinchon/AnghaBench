#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_12__ {int width; int height; float* widthLodError; float* heightLodError; float lodRadius; int /*<<< orphan*/  lodOrigin; TYPE_2__* verts; } ;
typedef  TYPE_1__ srfGridMesh_t ;
struct TYPE_13__ {int /*<<< orphan*/  xyz; } ;
typedef  TYPE_2__ drawVert_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int MAX_GRID_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,int,TYPE_2__**) ; 
 TYPE_1__* FUNC2 (int,int,TYPE_2__**,float**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

srfGridMesh_t *FUNC5( srfGridMesh_t *grid, int column, int row, vec3_t point, float loderror ) {
	int i, j;
	int width, height, oldwidth;
	drawVert_t ctrl[MAX_GRID_SIZE][MAX_GRID_SIZE];
	float errorTable[2][MAX_GRID_SIZE];
	float lodRadius;
	vec3_t lodOrigin;

	oldwidth = 0;
	width = grid->width + 1;
	if (width > MAX_GRID_SIZE)
		return NULL;
	height = grid->height;
	for (i = 0; i < width; i++) {
		if (i == column) {
			//insert new column
			for (j = 0; j < grid->height; j++) {
				FUNC0( &grid->verts[j * grid->width + i-1], &grid->verts[j * grid->width + i], &ctrl[j][i] );
				if (j == row)
					FUNC4(point, ctrl[j][i].xyz);
			}
			errorTable[0][i] = loderror;
			continue;
		}
		errorTable[0][i] = grid->widthLodError[oldwidth];
		for (j = 0; j < grid->height; j++) {
			ctrl[j][i] = grid->verts[j * grid->width + oldwidth];
		}
		oldwidth++;
	}
	for (j = 0; j < grid->height; j++) {
		errorTable[1][j] = grid->heightLodError[j];
	}
	// put all the aproximating points on the curve
	//PutPointsOnCurve( ctrl, width, height );
	// calculate normals
	FUNC1( width, height, ctrl );

	FUNC4(grid->lodOrigin, lodOrigin);
	lodRadius = grid->lodRadius;
	// free the old grid
	FUNC3(grid);
	// create a new grid
	grid = FUNC2( width, height, ctrl, errorTable );
	grid->lodRadius = lodRadius;
	FUNC4(lodOrigin, grid->lodOrigin);
	return grid;
}