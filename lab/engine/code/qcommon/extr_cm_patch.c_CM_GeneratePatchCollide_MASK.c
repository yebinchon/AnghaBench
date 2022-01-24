#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct patchCollide_s {int** bounds; } ;
typedef  struct patchCollide_s patchCollide_t ;
struct TYPE_7__ {int width; int height; int /*<<< orphan*/ ** points; void* wrapHeight; void* wrapWidth; } ;
typedef  TYPE_1__ cGrid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct patchCollide_s*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 struct patchCollide_s* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int MAX_GRID_SIZE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int c_totalPatchBlocks ; 
 int /*<<< orphan*/  h_high ; 
 void* qfalse ; 

struct patchCollide_s	*FUNC10( int width, int height, vec3_t *points ) {
	patchCollide_t	*pf;
	cGrid_t			grid;
	int				i, j;

	if ( width <= 2 || height <= 2 || !points ) {
		FUNC7( ERR_DROP, "CM_GeneratePatchFacets: bad parameters: (%i, %i, %p)",
			width, height, (void *)points );
	}

	if ( !(width & 1) || !(height & 1) ) {
		FUNC7( ERR_DROP, "CM_GeneratePatchFacets: even sizes are invalid for quadratic meshes" );
	}

	if ( width > MAX_GRID_SIZE || height > MAX_GRID_SIZE ) {
		FUNC7( ERR_DROP, "CM_GeneratePatchFacets: source is > MAX_GRID_SIZE" );
	}

	// build a grid
	grid.width = width;
	grid.height = height;
	grid.wrapWidth = qfalse;
	grid.wrapHeight = qfalse;
	for ( i = 0 ; i < width ; i++ ) {
		for ( j = 0 ; j < height ; j++ ) {
			FUNC9( points[j*width + i], grid.points[i][j] );
		}
	}

	// subdivide the grid
	FUNC3( &grid );
	FUNC4( &grid );
	FUNC2( &grid );

	FUNC5( &grid );

	FUNC3( &grid );
	FUNC4( &grid );
	FUNC2( &grid );

	// we now have a grid of points exactly on the curve
	// the approximate surface defined by these points will be
	// collided against
	pf = FUNC8( sizeof( *pf ), h_high );
	FUNC6( pf->bounds[0], pf->bounds[1] );
	for ( i = 0 ; i < grid.width ; i++ ) {
		for ( j = 0 ; j < grid.height ; j++ ) {
			FUNC0( grid.points[i][j], pf->bounds[0], pf->bounds[1] );
		}
	}

	c_totalPatchBlocks += ( grid.width - 1 ) * ( grid.height - 1 );

	// generate a bsp tree for the surface
	FUNC1( &grid, pf );

	// expand by one unit for epsilon purposes
	pf->bounds[0][0] -= 1;
	pf->bounds[0][1] -= 1;
	pf->bounds[0][2] -= 1;

	pf->bounds[1][0] += 1;
	pf->bounds[1][1] += 1;
	pf->bounds[1][2] += 1;

	return pf;
}