#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_2__ {int myTeamCount; char** teamNames; int /*<<< orphan*/  teamLeader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (char*) ; 
 TYPE_1__ uiInfo ; 

__attribute__((used)) static qboolean FUNC5(int flags, float *special, int key) {
	int select = FUNC1(key);
	if (select != 0) {
		int selected;

		FUNC0();
		if (!uiInfo.teamLeader) {
			return qfalse;
		}
		selected = FUNC4("cg_selectedPlayer");

		selected += select;

		if (selected > uiInfo.myTeamCount) {
			selected = 0;
		} else if (selected < 0) {
			selected = uiInfo.myTeamCount;
		}

		if (selected == uiInfo.myTeamCount) {
			FUNC2( "cg_selectedPlayerName", "Everyone");
		} else {
			FUNC2( "cg_selectedPlayerName", uiInfo.teamNames[selected]);
		}
		FUNC3( "cg_selectedPlayer", selected);
	}
	return qfalse;
}