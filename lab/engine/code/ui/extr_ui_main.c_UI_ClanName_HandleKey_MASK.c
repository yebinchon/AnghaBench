#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_4__ {int teamCount; TYPE_1__* teamList; } ;
struct TYPE_3__ {int cinematic; int /*<<< orphan*/  teamName; } ;

/* Variables and functions */
 int /*<<< orphan*/  FEEDER_HEADS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ uiInfo ; 
 int /*<<< orphan*/  updateModel ; 

__attribute__((used)) static qboolean FUNC7(int flags, float *special, int key) {
	int select = FUNC3(key);
	if (select != 0) {
		int i;

		i = FUNC4(FUNC0("ui_teamName"));

		if (uiInfo.teamList[i].cinematic >= 0) {
			FUNC5(uiInfo.teamList[i].cinematic);
			uiInfo.teamList[i].cinematic = -1;
		}

		i += select;

		if (i >= uiInfo.teamCount) {
			i = 0;
		} else if (i < 0) {
			i = uiInfo.teamCount - 1;
		}

		FUNC6( "ui_teamName", uiInfo.teamList[i].teamName);
		FUNC2();
		FUNC1(FEEDER_HEADS, 0);
		updateModel = qtrue;
		return qtrue;
	}
	return qfalse;
}