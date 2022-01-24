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

/* Variables and functions */
 scalar_t__ bspDrawSurfaces ; 
 scalar_t__ bspDrawVerts ; 
 scalar_t__ bspGridPoints ; 
 scalar_t__ bspLightBytes ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

void FUNC1(){
	if ( bspDrawVerts != 0 ) {
		FUNC0( bspDrawVerts );
	}
	if ( bspDrawSurfaces != 0 ) {
		FUNC0( bspDrawSurfaces );
	}
	if ( bspLightBytes != 0 ) {
		FUNC0( bspLightBytes );
	}
	if ( bspGridPoints != 0 ) {
		FUNC0( bspGridPoints );
	}
}