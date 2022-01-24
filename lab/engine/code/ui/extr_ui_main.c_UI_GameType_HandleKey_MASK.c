#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
struct TYPE_10__ {int numGameTypes; TYPE_2__* gameTypes; TYPE_1__* mapList; } ;
struct TYPE_9__ {size_t integer; } ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {scalar_t__ gtEnum; } ;
struct TYPE_6__ {int /*<<< orphan*/  mapLoadName; } ;

/* Variables and functions */
 int /*<<< orphan*/  FEEDER_MAPS ; 
 scalar_t__ GT_TEAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 TYPE_5__ uiInfo ; 
 TYPE_4__ ui_currentMap ; 
 TYPE_3__ ui_gameType ; 

__attribute__((used)) static qboolean FUNC6(int flags, float *special, int key, qboolean resetMap) {
	int select = FUNC3(key);
	if (select != 0) {
		int oldCount = FUNC2(qtrue);

		// hard coded mess here
		if (select < 0) {
			ui_gameType.integer--;
			if (ui_gameType.integer == 2) {
				ui_gameType.integer = 1;
			} else if (ui_gameType.integer < 2) {
				ui_gameType.integer = uiInfo.numGameTypes - 1;
			}
		} else {
			ui_gameType.integer++;
			if (ui_gameType.integer >= uiInfo.numGameTypes) {
				ui_gameType.integer = 1;
			} else if (ui_gameType.integer == 2) {
				ui_gameType.integer = 3;
			}
		}
    
		if (uiInfo.gameTypes[ui_gameType.integer].gtEnum < GT_TEAM) {
			FUNC5( "ui_Q3Model", 1 );
		} else {
			FUNC5( "ui_Q3Model", 0 );
		}

		FUNC5("ui_gameType", ui_gameType.integer);
		FUNC4(qtrue);
		FUNC1(uiInfo.mapList[ui_currentMap.integer].mapLoadName, uiInfo.gameTypes[ui_gameType.integer].gtEnum);
		if (resetMap && oldCount != FUNC2(qtrue)) {
			FUNC5( "ui_currentMap", 0);
			FUNC0(NULL, FEEDER_MAPS, 0, NULL);
		}
		return qtrue;
	}
	return qfalse;
}