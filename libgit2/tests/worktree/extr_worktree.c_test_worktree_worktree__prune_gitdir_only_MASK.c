#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_worktree_prune_options ;
struct TYPE_10__ {int /*<<< orphan*/  gitlink_path; int /*<<< orphan*/  gitdir_path; } ;
typedef  TYPE_2__ git_worktree ;
struct TYPE_11__ {int /*<<< orphan*/  repo; } ;

/* Variables and functions */
 TYPE_1__ GIT_WORKTREE_PRUNE_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_WORKTREE_PRUNE_VALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_7__ fixture ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*) ; 

void FUNC6(void)
{
	git_worktree_prune_options opts = GIT_WORKTREE_PRUNE_OPTIONS_INIT;
	git_worktree *wt;

	opts.flags = GIT_WORKTREE_PRUNE_VALID;
	FUNC1(FUNC4(&wt, fixture.repo, "testrepo-worktree"));
	FUNC1(FUNC5(wt, &opts));

	FUNC0(!FUNC2(wt->gitdir_path));
	FUNC0(FUNC2(wt->gitlink_path));

	FUNC3(wt);
}