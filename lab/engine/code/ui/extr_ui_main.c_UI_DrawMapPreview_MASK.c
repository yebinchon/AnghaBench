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
typedef  int /*<<< orphan*/  vec4_t ;
struct TYPE_8__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ rectDef_t ;
typedef  scalar_t__ qboolean ;
struct TYPE_11__ {int mapCount; TYPE_1__* mapList; } ;
struct TYPE_10__ {int integer; } ;
struct TYPE_9__ {int integer; } ;
struct TYPE_7__ {int levelShot; char* imageName; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 
 TYPE_5__ uiInfo ; 
 TYPE_4__ ui_currentMap ; 
 TYPE_3__ ui_currentNetMap ; 

__attribute__((used)) static void FUNC3(rectDef_t *rect, float scale, vec4_t color, qboolean net) {
	int map = (net) ? ui_currentNetMap.integer : ui_currentMap.integer;
	if (map < 0 || map > uiInfo.mapCount) {
		if (net) {
			ui_currentNetMap.integer = 0;
			FUNC1("ui_currentNetMap", "0");
		} else {
			ui_currentMap.integer = 0;
			FUNC1("ui_currentMap", "0");
		}
		map = 0;
	}

	if (uiInfo.mapList[map].levelShot == -1) {
		uiInfo.mapList[map].levelShot = FUNC2(uiInfo.mapList[map].imageName);
	}

	if (uiInfo.mapList[map].levelShot > 0) {
		FUNC0( rect->x, rect->y, rect->w, rect->h, uiInfo.mapList[map].levelShot);
	} else {
		FUNC0( rect->x, rect->y, rect->w, rect->h, FUNC2("menu/art/unknownmap"));
	}
}