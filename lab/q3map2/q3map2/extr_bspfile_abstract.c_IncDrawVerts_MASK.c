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
typedef  int /*<<< orphan*/  bspDrawVert_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAX_MAP_DRAW_VERTS ; 
 int /*<<< orphan*/ * bspDrawVerts ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int numBSPDrawVerts ; 
 int numBSPDrawVertsBuffer ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int,char*) ; 

void FUNC5(){
	numBSPDrawVerts++;

	if ( bspDrawVerts == 0 ) {
		numBSPDrawVertsBuffer = MAX_MAP_DRAW_VERTS / 37;

		bspDrawVerts = FUNC4( sizeof( bspDrawVert_t ) * numBSPDrawVertsBuffer, "IncDrawVerts" );

	}
	else if ( numBSPDrawVerts > numBSPDrawVertsBuffer ) {
		bspDrawVert_t *newBspDrawVerts;

		numBSPDrawVertsBuffer *= 3; // multiply by 1.5
		numBSPDrawVertsBuffer /= 2;

		if ( numBSPDrawVertsBuffer > MAX_MAP_DRAW_VERTS ) {
			numBSPDrawVertsBuffer = MAX_MAP_DRAW_VERTS;
		}

		newBspDrawVerts = FUNC3( bspDrawVerts, sizeof( bspDrawVert_t ) * numBSPDrawVertsBuffer );

		if ( !newBspDrawVerts ) {
			FUNC1 (bspDrawVerts);
			FUNC0( "realloc() failed (IncDrawVerts)" );
		}

		bspDrawVerts = newBspDrawVerts;
	}

	FUNC2( bspDrawVerts + ( numBSPDrawVerts - 1 ), 0, sizeof( bspDrawVert_t ) );
}