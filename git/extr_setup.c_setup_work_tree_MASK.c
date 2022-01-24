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
 int /*<<< orphan*/  GIT_WORK_TREE_ENVIRONMENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ work_tree_config_is_bogus ; 

void FUNC6(void)
{
	const char *work_tree;
	static int initialized = 0;

	if (initialized)
		return;

	if (work_tree_config_is_bogus)
		FUNC2(FUNC0("unable to set up work tree using invalid config"));

	work_tree = FUNC3();
	if (!work_tree || FUNC1(work_tree))
		FUNC2(FUNC0("this operation must be run in a work tree"));

	/*
	 * Make sure subsequent git processes find correct worktree
	 * if $GIT_WORK_TREE is set relative
	 */
	if (FUNC4(GIT_WORK_TREE_ENVIRONMENT))
		FUNC5(GIT_WORK_TREE_ENVIRONMENT, ".", 1);

	initialized = 1;
}