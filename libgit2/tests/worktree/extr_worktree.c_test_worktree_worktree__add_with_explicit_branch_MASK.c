#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_19__ ;

/* Type definitions */
struct TYPE_24__ {TYPE_4__* ref; } ;
typedef  TYPE_2__ git_worktree_add_options ;
typedef  int /*<<< orphan*/  git_worktree ;
struct TYPE_25__ {int /*<<< orphan*/  workdir; } ;
typedef  TYPE_3__ git_repository ;
struct TYPE_23__ {int /*<<< orphan*/  oid; } ;
struct TYPE_26__ {TYPE_1__ target; } ;
typedef  TYPE_4__ git_reference ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_27__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_5__ git_buf ;
struct TYPE_22__ {TYPE_3__* repo; } ;

/* Variables and functions */
 TYPE_5__ GIT_BUF_INIT ; 
 TYPE_2__ GIT_WORKTREE_ADD_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_19__ fixture ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__**,TYPE_3__*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__**,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,TYPE_3__*,char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void FUNC14(void)
{
	git_reference *head, *branch, *wthead;
	git_commit *commit;
	git_worktree *wt;
	git_repository *wtrepo;
	git_buf path = GIT_BUF_INIT;
	git_worktree_add_options opts = GIT_WORKTREE_ADD_OPTIONS_INIT;

	FUNC1(FUNC10(&head, fixture.repo));
	FUNC1(FUNC6(&commit, fixture.repo, &head->target.oid));
	FUNC1(FUNC2(&branch, fixture.repo, "worktree-with-ref", commit, false));

	opts.ref = branch;

	FUNC1(FUNC4(&path, fixture.repo->workdir, "../worktree-with-different-name"));
	FUNC1(FUNC12(&wt, fixture.repo, "worktree-with-different-name", path.ptr, &opts));
	FUNC1(FUNC11(&wtrepo, wt));
	FUNC1(FUNC10(&wthead, wtrepo));
	FUNC0(FUNC8(wthead), "refs/heads/worktree-with-ref");

	FUNC3(&path);
	FUNC5(commit);
	FUNC7(head);
	FUNC7(branch);
	FUNC7(wthead);
	FUNC9(wtrepo);
	FUNC13(wt);
}