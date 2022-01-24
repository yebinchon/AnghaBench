#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ vidHeight; scalar_t__ vidWidth; } ;
struct TYPE_5__ {TYPE_1__ glconfig; } ;
struct TYPE_6__ {TYPE_2__ uiDC; } ;

/* Variables and functions */
 float SCREEN_HEIGHT ; 
 float SCREEN_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (float*,float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,float,float,float,float) ; 
 TYPE_3__ uiInfo ; 

__attribute__((used)) static void FUNC3(int handle, float x, float y, float w, float h) {
	// adjust coords to get correct placement in wide screen
	FUNC0( &x, &y, &w, &h );

	// CIN_SetExtents takes stretched 640x480 virtualized coords
	x *= SCREEN_WIDTH / (float)uiInfo.uiDC.glconfig.vidWidth;
	w *= SCREEN_WIDTH / (float)uiInfo.uiDC.glconfig.vidWidth;
	y *= SCREEN_HEIGHT / (float)uiInfo.uiDC.glconfig.vidHeight;
	h *= SCREEN_HEIGHT / (float)uiInfo.uiDC.glconfig.vidHeight;

	FUNC2(handle, x, y, w, h);
  FUNC1(handle);
}