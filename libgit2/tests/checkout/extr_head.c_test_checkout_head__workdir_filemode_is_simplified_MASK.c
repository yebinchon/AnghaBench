#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_3__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

void FUNC7(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_object *target, *branch;

	opts.checkout_strategy = GIT_CHECKOUT_FORCE;

	FUNC0(FUNC5(&target, g_repo, "a38d028f71eaa590febb7d716b1ca32350cf70da"));
	FUNC0(FUNC4(g_repo, target, GIT_RESET_HARD, NULL));

	FUNC1(FUNC6("testrepo/branch_file.txt", 0666));

	/*
	 * Checkout should not fail with a conflict; though the file mode
	 * on disk is literally different to the base (0666 vs 0644), Git
	 * ignores the actual mode and simply treats both as non-executable.
	 */
	FUNC0(FUNC5(&branch, g_repo, "099fabac3a9ea935598528c27f866e34089c2eff"));

	opts.checkout_strategy &= ~GIT_CHECKOUT_FORCE;
	opts.checkout_strategy |=  GIT_CHECKOUT_SAFE;
	FUNC0(FUNC2(g_repo, branch, NULL));

	FUNC3(branch);
	FUNC3(target);
}