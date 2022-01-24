#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_reflog_entry ;
typedef  int /*<<< orphan*/  git_reflog ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_rebase_operation ;
typedef  int /*<<< orphan*/  git_rebase ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ITEROVER ; 
 int /*<<< orphan*/  GIT_REFERENCE_SYMBOLIC ; 
 int /*<<< orphan*/  GIT_REPOSITORY_STATE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  signature ; 

void FUNC25(void)
{
	git_rebase *rebase;
	git_reference *branch_ref, *upstream_ref, *head_ref;
	git_annotated_commit *branch_head, *upstream_head;
	git_rebase_operation *rebase_operation;
	git_oid commit_id;
	git_reflog *reflog;
	const git_reflog_entry *reflog_entry;
	int error;

	FUNC5(FUNC15(&branch_ref, repo, "refs/heads/gravy"));
	FUNC5(FUNC15(&upstream_ref, repo, "refs/heads/veal"));

	FUNC5(FUNC7(&branch_head, repo, branch_ref));
	FUNC5(FUNC7(&upstream_head, repo, upstream_ref));

	FUNC5(FUNC12(&rebase, repo, branch_head, upstream_head, NULL, NULL));

	FUNC5(FUNC13(&rebase_operation, rebase));
	FUNC5(FUNC9(&commit_id, rebase, NULL, signature,
		NULL, NULL));

	FUNC4(error = FUNC13(&rebase_operation, rebase));
	FUNC1(GIT_ITEROVER, error);

	FUNC5(FUNC10(rebase, signature));

	FUNC1(GIT_REPOSITORY_STATE_NONE, FUNC24(repo));

	FUNC5(FUNC15(&head_ref, repo, "HEAD"));
	FUNC1(GIT_REFERENCE_SYMBOLIC, FUNC17(head_ref));
	FUNC3("refs/heads/gravy", FUNC16(head_ref));

	/* Make sure the reflogs are updated appropriately */
	FUNC5(FUNC23(&reflog, repo, "HEAD"));
	FUNC0(reflog_entry = FUNC18(reflog, 0));
	FUNC2(&commit_id, FUNC20(reflog_entry));
	FUNC2(&commit_id, FUNC19(reflog_entry));
	FUNC3("rebase finished: returning to refs/heads/gravy", FUNC21(reflog_entry));
	FUNC22(reflog);

	FUNC5(FUNC23(&reflog, repo, "refs/heads/gravy"));
	FUNC0(reflog_entry = FUNC18(reflog, 0));
	FUNC2(FUNC8(branch_head), FUNC20(reflog_entry));
	FUNC2(&commit_id, FUNC19(reflog_entry));
	FUNC3("rebase finished: refs/heads/gravy onto f87d14a4a236582a0278a916340a793714256864", FUNC21(reflog_entry));

	FUNC22(reflog);
	FUNC6(branch_head);
	FUNC6(upstream_head);
	FUNC14(head_ref);
	FUNC14(branch_ref);
	FUNC14(upstream_ref);
	FUNC11(rebase);
}