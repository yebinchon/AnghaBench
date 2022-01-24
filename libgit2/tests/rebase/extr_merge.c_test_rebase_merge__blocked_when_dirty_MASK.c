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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_rebase_operation ;
typedef  int /*<<< orphan*/  git_rebase ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_EUNMERGED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  signature ; 

void FUNC11(void)
{
	git_rebase *rebase;
	git_reference *branch_ref, *upstream_ref;
	git_annotated_commit *branch_head, *upstream_head;
	git_rebase_operation *rebase_operation;
	git_oid commit_id;

	FUNC2(FUNC10(&branch_ref, repo, "refs/heads/beef"));
	FUNC2(FUNC10(&upstream_ref, repo, "refs/heads/master"));

	FUNC2(FUNC4(&branch_head, repo, branch_ref));
	FUNC2(FUNC4(&upstream_head, repo, upstream_ref));

	FUNC2(FUNC7(&rebase, repo, branch_head, upstream_head, NULL, NULL));

	/* Allow untracked files */
	FUNC2(FUNC8(&rebase_operation, rebase));
	FUNC1("rebase/untracked_file.txt", "This is untracked\n");
	FUNC2(FUNC5(&commit_id, rebase, NULL, signature,
		NULL, NULL));

	/* Do not allow unstaged */
	FUNC2(FUNC8(&rebase_operation, rebase));
	FUNC1("rebase/veal.txt", "This is an unstaged change\n");
	FUNC0(GIT_EUNMERGED, FUNC5(&commit_id, rebase, NULL, signature,
		NULL, NULL));

	FUNC3(branch_head);
	FUNC3(upstream_head);
	FUNC9(branch_ref);
	FUNC9(upstream_ref);
	FUNC6(rebase);
}