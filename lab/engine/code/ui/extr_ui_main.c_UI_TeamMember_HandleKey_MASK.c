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
typedef  scalar_t__ qboolean ;
struct TYPE_4__ {int characterCount; } ;
struct TYPE_3__ {scalar_t__ integer; } ;

/* Variables and functions */
 scalar_t__ GT_TEAM ; 
 int FUNC0 () ; 
 int FUNC1 (int) ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (char*) ; 
 TYPE_2__ uiInfo ; 
 TYPE_1__ ui_actualNetGameType ; 
 char* FUNC4 (char*,int) ; 

__attribute__((used)) static qboolean FUNC5(int flags, float *special, int key, qboolean blue, int num) {
	int select = FUNC1(key);
	if (select != 0) {
		// 0 - None
		// 1 - Human
		// 2..NumCharacters - Bot
		char *cvar = FUNC4(blue ? "ui_blueteam%i" : "ui_redteam%i", num);
		int value = FUNC3(cvar);

		value += select;

		if (ui_actualNetGameType.integer >= GT_TEAM) {
			if (value >= uiInfo.characterCount + 2) {
				value = 0;
			} else if (value < 0) {
				value = uiInfo.characterCount + 2 - 1;
			}
		} else {
			if (value >= FUNC0() + 2) {
				value = 0;
			} else if (value < 0) {
				value = FUNC0() + 2 - 1;
			}
		}

		FUNC2(cvar, value);
		return qtrue;
	}
	return qfalse;
}