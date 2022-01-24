#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_worktree_prune_options ;
typedef  int /*<<< orphan*/  git_worktree ;
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_6__ {int /*<<< orphan*/  repo; int /*<<< orphan*/  worktreename; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BRANCH_LOCAL ; 
 TYPE_1__ GIT_WORKTREE_PRUNE_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_WORKTREE_PRUNE_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__ fixture ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC7(void)
{
	git_worktree_prune_options opts = GIT_WORKTREE_PRUNE_OPTIONS_INIT;
	git_reference *branch;
	git_worktree *worktree;

	opts.flags = GIT_WORKTREE_PRUNE_VALID;

	FUNC0(FUNC5(&worktree, fixture.repo, fixture.worktreename));
	FUNC0(FUNC6(worktree, &opts));
	FUNC4(worktree);

	FUNC0(FUNC2(&branch, fixture.repo,
		    "testrepo-worktree", GIT_BRANCH_LOCAL));
	FUNC0(FUNC1(branch));
	FUNC3(branch);
}