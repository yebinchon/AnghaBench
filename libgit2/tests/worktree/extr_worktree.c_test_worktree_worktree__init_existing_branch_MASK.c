#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_worktree ;
struct TYPE_16__ {int /*<<< orphan*/  oid; } ;
struct TYPE_17__ {TYPE_1__ target; } ;
typedef  TYPE_2__ git_reference ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_18__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;
struct TYPE_19__ {int /*<<< orphan*/  workdir; } ;
struct TYPE_15__ {TYPE_4__* repo; } ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_13__ fixture ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,TYPE_4__*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__**,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,TYPE_4__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC10(void)
{
	git_reference *head, *branch;
	git_commit *commit;
	git_worktree *wt;
	git_buf path = GIT_BUF_INIT;

	FUNC1(FUNC8(&head, fixture.repo));
	FUNC1(FUNC6(&commit, fixture.repo, &head->target.oid));
	FUNC1(FUNC2(&branch, fixture.repo, "worktree-new", commit, false));

	FUNC1(FUNC4(&path, fixture.repo->workdir, "../worktree-new"));
	FUNC0(FUNC9(&wt, fixture.repo, "worktree-new", path.ptr, NULL));

	FUNC3(&path);
	FUNC5(commit);
	FUNC7(head);
	FUNC7(branch);
}