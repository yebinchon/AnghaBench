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
struct TYPE_2__ {int botIndex; int characterCount; } ;

/* Variables and functions */
 int GT_TEAM ; 
 int FUNC0 () ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int FUNC2 (char*) ; 
 TYPE_1__ uiInfo ; 

__attribute__((used)) static qboolean FUNC3(int flags, float *special, int key) {
	int select = FUNC1(key);
	if (select != 0) {
		int game = FUNC2("g_gametype");
		int value = uiInfo.botIndex;

		value += select;

		if (game >= GT_TEAM) {
			if (value >= uiInfo.characterCount) {
				value = 0;
			} else if (value < 0) {
				value = uiInfo.characterCount - 1;
			}
		} else {
			if (value >= FUNC0()) {
				value = 0;
			} else if (value < 0) {
				value = FUNC0() - 1;
			}
		}
		uiInfo.botIndex = value;
		return qtrue;
	}
	return qfalse;
}