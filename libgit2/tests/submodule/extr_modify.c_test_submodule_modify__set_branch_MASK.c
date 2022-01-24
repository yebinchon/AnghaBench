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
typedef  int /*<<< orphan*/  git_submodule ;

/* Variables and functions */
 int /*<<< orphan*/ * SM_LIBGIT2_BRANCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

void FUNC7(void)
{
	git_submodule *sm;

	FUNC2(FUNC5(&sm, g_repo, "sm_changed_head"));
	FUNC0(FUNC3(sm) == NULL);
	FUNC4(sm);

	FUNC2(FUNC6(g_repo, "sm_changed_head", SM_LIBGIT2_BRANCH));
	FUNC2(FUNC5(&sm, g_repo, "sm_changed_head"));
	FUNC1(SM_LIBGIT2_BRANCH, FUNC3(sm));
	FUNC4(sm);

	FUNC2(FUNC6(g_repo, "sm_changed_head", NULL));
	FUNC2(FUNC5(&sm, g_repo, "sm_changed_head"));
	FUNC0(FUNC3(sm) == NULL);
	FUNC4(sm);
}