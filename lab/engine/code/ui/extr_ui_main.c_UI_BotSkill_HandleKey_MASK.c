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
struct TYPE_2__ {scalar_t__ skillIndex; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ numSkillLevels ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_1__ uiInfo ; 

__attribute__((used)) static qboolean FUNC1(int flags, float *special, int key) {
	int select = FUNC0(key);
	if (select != 0) {
		uiInfo.skillIndex += select;

		if (uiInfo.skillIndex >= numSkillLevels) {
			uiInfo.skillIndex = 0;
		} else if (uiInfo.skillIndex < 0) {
			uiInfo.skillIndex = numSkillLevels-1;
		}
		return qtrue;
	}
	return qfalse;
}