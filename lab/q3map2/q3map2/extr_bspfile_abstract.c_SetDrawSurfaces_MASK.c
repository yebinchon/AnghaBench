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
typedef  int /*<<< orphan*/  bspDrawSurface_t ;

/* Variables and functions */
 scalar_t__ bspDrawSurfaces ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int numBSPDrawSurfaces ; 
 int numBSPDrawSurfacesBuffer ; 
 scalar_t__ FUNC2 (int,char*) ; 

void FUNC3( int n ){
	if ( bspDrawSurfaces != 0 ) {
		FUNC0( bspDrawSurfaces );
	}

	numBSPDrawSurfaces = n;
	numBSPDrawSurfacesBuffer = numBSPDrawSurfaces;

	bspDrawSurfaces = FUNC2( sizeof( bspDrawSurface_t ) * numBSPDrawSurfacesBuffer, "IncDrawSurfaces" );

	FUNC1( bspDrawSurfaces, 0, numBSPDrawSurfacesBuffer * sizeof( bspDrawSurface_t ) );
}