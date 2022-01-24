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
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(void)
{
	unsigned int status, expected;

	FUNC2(
		"submod2/.git/modules/sm_unchanged/info/exclude", "\n*.ignored\n");

	FUNC4(
		FUNC6("sm_unchanged/directory", "submod2", 0755, 0, NULL));
	FUNC3(
		"submod2/sm_unchanged/directory/i_am.ignored",
		"ignore this file, please\n");

	status = FUNC5(g_repo, "sm_unchanged");
	FUNC1(FUNC0(status));

	expected = GIT_SUBMODULE_STATUS_IN_HEAD |
		GIT_SUBMODULE_STATUS_IN_INDEX |
		GIT_SUBMODULE_STATUS_IN_CONFIG |
		GIT_SUBMODULE_STATUS_IN_WD;
	FUNC1(status == expected);
}