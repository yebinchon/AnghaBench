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
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_6__ {int numGameTypes; TYPE_1__* gameTypes; } ;
struct TYPE_5__ {int integer; } ;
struct TYPE_4__ {int gtEnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FEEDER_ALLMAPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 TYPE_3__ uiInfo ; 
 TYPE_2__ ui_netGameType ; 

__attribute__((used)) static qboolean FUNC4(int flags, float *special, int key) {
	int select = FUNC2(key);
	if (select != 0) {
		ui_netGameType.integer += select;

		if (ui_netGameType.integer < 0) {
			ui_netGameType.integer = uiInfo.numGameTypes - 1;
		} else if (ui_netGameType.integer >= uiInfo.numGameTypes) {
			ui_netGameType.integer = 0;
		}

		FUNC3( "ui_netGameType", ui_netGameType.integer);
		FUNC3( "ui_actualnetGameType", uiInfo.gameTypes[ui_netGameType.integer].gtEnum);
		FUNC3( "ui_currentNetMap", 0);
		FUNC1(qfalse);
		FUNC0(NULL, FEEDER_ALLMAPS, 0, NULL);
		return qtrue;
	}
	return qfalse;
}