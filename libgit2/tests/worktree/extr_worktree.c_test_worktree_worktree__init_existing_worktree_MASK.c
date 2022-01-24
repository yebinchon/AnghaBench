#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  gitlink_path; } ;
typedef  TYPE_2__ git_worktree ;
struct TYPE_16__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;
struct TYPE_17__ {int /*<<< orphan*/  workdir; } ;
struct TYPE_14__ {int /*<<< orphan*/  gitlink; } ;
struct TYPE_13__ {TYPE_1__* worktree; TYPE_5__* repo; } ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_11__ fixture ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,TYPE_5__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__**,TYPE_5__*,char*) ; 

void FUNC8(void)
{
	git_worktree *wt;
	git_buf path = GIT_BUF_INIT;

	FUNC2(FUNC4(&path, fixture.repo->workdir, "../worktree-new"));
	FUNC1(FUNC5(&wt, fixture.repo, "testrepo-worktree", path.ptr, NULL));

	FUNC2(FUNC7(&wt, fixture.repo, "testrepo-worktree"));
	FUNC0(wt->gitlink_path, fixture.worktree->gitlink);

	FUNC3(&path);
	FUNC6(wt);
}