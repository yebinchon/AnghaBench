#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int numSkillLevels ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static qboolean FUNC3(int flags, float *special, int key) {
	int select = FUNC0(key);
	if (select != 0) {
		int i = FUNC2( "g_spSkill" );

		i += select;

		if (i < 1) {
			i = numSkillLevels;
		} else if (i > numSkillLevels) {
			i = 1;
		}

		FUNC1("g_spSkill", i);
		return qtrue;
	}
	return qfalse;
}