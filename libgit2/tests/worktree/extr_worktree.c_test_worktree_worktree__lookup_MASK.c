#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  commondir_path; int /*<<< orphan*/  gitlink_path; int /*<<< orphan*/  parent_path; int /*<<< orphan*/  gitdir_path; } ;
typedef  TYPE_2__ git_worktree ;
struct TYPE_13__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;
struct TYPE_15__ {TYPE_5__* repo; TYPE_1__* worktree; } ;
struct TYPE_14__ {int /*<<< orphan*/  commondir; int /*<<< orphan*/  gitdir; int /*<<< orphan*/  workdir; } ;
struct TYPE_11__ {int /*<<< orphan*/  gitlink; } ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_9__ fixture ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,TYPE_5__*,char*) ; 

void FUNC6(void)
{
	git_worktree *wt;
	git_buf gitdir_path = GIT_BUF_INIT;

	FUNC1(FUNC5(&wt, fixture.repo, "testrepo-worktree"));

	FUNC1(FUNC3(&gitdir_path, fixture.repo->commondir, "worktrees/testrepo-worktree/"));

	FUNC0(wt->gitdir_path, gitdir_path.ptr);
	FUNC0(wt->parent_path, fixture.repo->workdir);
	FUNC0(wt->gitlink_path, fixture.worktree->gitlink);
	FUNC0(wt->commondir_path, fixture.repo->gitdir);
	FUNC0(wt->commondir_path, fixture.repo->commondir);

	FUNC2(&gitdir_path);
	FUNC4(wt);
}