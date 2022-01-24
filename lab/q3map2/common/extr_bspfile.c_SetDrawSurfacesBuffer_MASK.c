#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  dsurface_t ;
typedef  int /*<<< orphan*/  drawVert_t ;

/* Variables and functions */
 int MAX_MAP_DRAW_SURFS ; 
 scalar_t__ drawSurfaces ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int numDrawSurfacesBuffer ; 
 scalar_t__ FUNC2 (int,char*) ; 

void FUNC3(){
	if ( drawSurfaces != 0 ) {
		FUNC0( drawSurfaces );
	}

	numDrawSurfacesBuffer = MAX_MAP_DRAW_SURFS;

	drawSurfaces = FUNC2( sizeof( dsurface_t ) * numDrawSurfacesBuffer, "IncDrawSurfaces" );

	FUNC1( drawSurfaces, 0, MAX_MAP_DRAW_SURFS * sizeof( drawVert_t ) );
}