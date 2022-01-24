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

/* Variables and functions */
 unsigned int GIT_SUBMODULE_STATUS_IN_CONFIG ; 
 unsigned int GIT_SUBMODULE_STATUS_IN_HEAD ; 
 unsigned int GIT_SUBMODULE_STATUS_IN_INDEX ; 
 unsigned int GIT_SUBMODULE_STATUS_IN_WD ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  g_repo ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(void)
{
	unsigned int status = FUNC2(g_repo, "sm_unchanged");
	unsigned int expected =
		GIT_SUBMODULE_STATUS_IN_HEAD |
		GIT_SUBMODULE_STATUS_IN_INDEX |
		GIT_SUBMODULE_STATUS_IN_CONFIG |
		GIT_SUBMODULE_STATUS_IN_WD;

	FUNC1(FUNC0(status));
	FUNC1(expected == status);
}