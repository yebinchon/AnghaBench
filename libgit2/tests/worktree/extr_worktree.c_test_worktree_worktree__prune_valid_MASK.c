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
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_6__ {int /*<<< orphan*/  repo; } ;

/* Variables and functions */
 TYPE_1__ GIT_WORKTREE_PRUNE_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_WORKTREE_PRUNE_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__ fixture ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC7(void)
{
	git_worktree_prune_options opts = GIT_WORKTREE_PRUNE_OPTIONS_INIT;
	git_worktree *wt;
	git_repository *repo;

	opts.flags = GIT_WORKTREE_PRUNE_VALID;

	FUNC1(FUNC5(&wt, fixture.repo, "testrepo-worktree"));
	FUNC1(FUNC6(wt, &opts));

	/* Assert the repository is not valid anymore */
	FUNC0(FUNC3(&repo, wt));

	FUNC4(wt);
	FUNC2(repo);
}