#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_4__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo ; 

void FUNC9(void)
{
	git_reference *orig_ref, *br2_ref;
	git_commit *orig, *br2;
	git_checkout_options checkout_opts = GIT_CHECKOUT_OPTIONS_INIT;

	checkout_opts.checkout_strategy = GIT_CHECKOUT_SAFE;

	FUNC0(FUNC6(&orig_ref, repo, "HEAD", 100));
	FUNC0(FUNC4(&orig, repo, FUNC7(orig_ref)));
	FUNC0(FUNC8(repo, (git_object *)orig, GIT_RESET_HARD, NULL));

	FUNC1("testrepo/branch_file.txt", "testrepo/Branch_File.txt");

	FUNC0(FUNC6(&br2_ref, repo, "refs/heads/br2", 100));
	FUNC0(FUNC4(&br2, repo, FUNC7(br2_ref)));

	FUNC0(FUNC2(repo, (const git_object *)br2, &checkout_opts));

	FUNC3(orig);
	FUNC3(br2);
	FUNC5(orig_ref);
	FUNC5(br2_ref);
}