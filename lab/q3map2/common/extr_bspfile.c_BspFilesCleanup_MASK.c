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
 scalar_t__ drawSurfaces ; 
 scalar_t__ drawVerts ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ gridData ; 
 scalar_t__ lightBytes ; 

void FUNC1(){
	if ( drawVerts != 0 ) {
		FUNC0( drawVerts );
	}
	if ( drawSurfaces != 0 ) {
		FUNC0( drawSurfaces );
	}
	if ( lightBytes != 0 ) {
		FUNC0( lightBytes );
	}
	if ( gridData != 0 ) {
		FUNC0( gridData );
	}
}