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
 int /*<<< orphan*/  GIT_ECONFLICT ; 
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

void FUNC9(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_object *target, *branch;

	opts.checkout_strategy = GIT_CHECKOUT_FORCE;

	/* In this commit, `README` is executable */
	FUNC1(FUNC7(&target, g_repo, "f9ed4af42472941da45a3c"));
	FUNC1(FUNC6(g_repo, target, GIT_RESET_HARD, NULL));

	FUNC3(g_repo, "core.filemode", true);
	FUNC2(FUNC8("testrepo/README", 0644));

	/*
	 * Checkout will fail with a conflict; the file mode is updated in
	 * the checkout target, but the contents have changed in our branch.
	 */
	FUNC1(FUNC7(&branch, g_repo, "099fabac3a9ea935598528c27f866e34089c2eff"));

	opts.checkout_strategy &= ~GIT_CHECKOUT_FORCE;
	opts.checkout_strategy |=  GIT_CHECKOUT_SAFE;
	FUNC0(GIT_ECONFLICT, FUNC4(g_repo, branch, NULL));

	FUNC5(branch);
	FUNC5(target);
}