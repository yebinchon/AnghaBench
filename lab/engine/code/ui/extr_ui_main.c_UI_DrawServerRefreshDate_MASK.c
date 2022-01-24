#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  double* vec4_t ;
struct TYPE_9__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_3__ rectDef_t ;
struct TYPE_8__ {int realTime; } ;
struct TYPE_7__ {scalar_t__ refreshActive; } ;
struct TYPE_11__ {TYPE_2__ uiDC; TYPE_1__ serverStatus; } ;
struct TYPE_10__ {char* integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double*,double*,double*,double) ; 
 int PULSE_DIVISOR ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 double FUNC5 (int) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_5__ uiInfo ; 
 TYPE_4__ ui_netSource ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static void FUNC8(rectDef_t *rect, float scale, vec4_t color, int textStyle) {
	if (uiInfo.serverStatus.refreshActive) {
		vec4_t lowLight, newColor;
		lowLight[0] = 0.8 * color[0]; 
		lowLight[1] = 0.8 * color[1]; 
		lowLight[2] = 0.8 * color[2]; 
		lowLight[3] = 0.8 * color[3]; 
		FUNC0(color,lowLight,newColor,0.5+0.5*FUNC5(uiInfo.uiDC.realTime / PULSE_DIVISOR));
	  FUNC2(rect->x, rect->y, scale, newColor, FUNC7("Getting info for %d servers (ESC to cancel)", FUNC6(FUNC4())), 0, 0, textStyle);
	} else {
		char buff[64];
		FUNC1(buff, FUNC3(FUNC7("ui_lastServerRefresh_%i", ui_netSource.integer)), 64);
	  FUNC2(rect->x, rect->y, scale, color, FUNC7("Refresh Time: %s", buff), 0, 0, textStyle);
	}
}