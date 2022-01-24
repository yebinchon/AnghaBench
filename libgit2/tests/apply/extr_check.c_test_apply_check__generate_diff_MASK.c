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
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_apply_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_APPLY_CHECK ; 
 int /*<<< orphan*/  GIT_APPLY_LOCATION_BOTH ; 
 TYPE_1__ GIT_APPLY_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(void)
{
	git_oid a_oid, b_oid;
	git_commit *a_commit, *b_commit;
	git_tree *a_tree, *b_tree;
	git_diff *diff;
	git_diff_options diff_opts = GIT_DIFF_OPTIONS_INIT;
	git_apply_options opts = GIT_APPLY_OPTIONS_INIT;

	FUNC0(FUNC7(&a_oid, "539bd011c4822c560c1d17cab095006b7a10f707"));
	FUNC0(FUNC7(&b_oid, "7c7bf85e978f1d18c0566f702d2cb7766b9c8d4f"));
	FUNC0(FUNC3(&a_commit, repo, &a_oid));
	FUNC0(FUNC3(&b_commit, repo, &b_oid));

	FUNC0(FUNC4(&a_tree, a_commit));
	FUNC0(FUNC4(&b_tree, b_commit));

	opts.flags |= GIT_APPLY_CHECK;
	FUNC0(FUNC6(&diff, repo, a_tree, b_tree, &diff_opts));
	FUNC0(FUNC1(repo, diff, GIT_APPLY_LOCATION_BOTH, &opts));

	FUNC9(repo);
	FUNC10(repo);

	FUNC5(diff);
	FUNC8(a_tree);
	FUNC8(b_tree);
	FUNC2(a_commit);
	FUNC2(b_commit);
}