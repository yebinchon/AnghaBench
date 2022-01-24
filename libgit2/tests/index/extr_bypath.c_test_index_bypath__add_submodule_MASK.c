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
 unsigned int GIT_SUBMODULE_STATUS_WD_MODIFIED ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_idx ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	unsigned int status;
	const char *sm_name = "sm_changed_head";

	FUNC1(FUNC3(&status, g_repo, sm_name, 0));
	FUNC0(GIT_SUBMODULE_STATUS_WD_MODIFIED, status & GIT_SUBMODULE_STATUS_WD_MODIFIED);
	FUNC1(FUNC2(g_idx, sm_name));
	FUNC1(FUNC3(&status, g_repo, sm_name, 0));
	FUNC0(0, status & GIT_SUBMODULE_STATUS_WD_MODIFIED);
}