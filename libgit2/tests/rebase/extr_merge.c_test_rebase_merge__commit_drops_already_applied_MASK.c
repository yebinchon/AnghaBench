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
 int /*<<< orphan*/  GIT_EAPPLIED ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  signature ; 

void FUNC12(void)
{
	git_rebase *rebase;
	git_reference *branch_ref, *upstream_ref;
	git_annotated_commit *branch_head, *upstream_head;
	git_rebase_operation *rebase_operation;
	git_oid commit_id;
	int error;

	FUNC3(FUNC11(&branch_ref, repo, "refs/heads/beef"));
	FUNC3(FUNC11(&upstream_ref, repo, "refs/heads/green_pea"));

	FUNC3(FUNC5(&branch_head, repo, branch_ref));
	FUNC3(FUNC5(&upstream_head, repo, upstream_ref));

	FUNC3(FUNC8(&rebase, repo, branch_head, upstream_head, NULL, NULL));

	FUNC3(FUNC9(&rebase_operation, rebase));
	FUNC2(error = FUNC6(&commit_id, rebase, NULL, signature,
		NULL, NULL));

	FUNC1(GIT_EAPPLIED, error);

	FUNC3(FUNC9(&rebase_operation, rebase));
	FUNC3(FUNC6(&commit_id, rebase, NULL, signature,
		NULL, NULL));

	FUNC0(
		"8d1f13f93c4995760ac07d129246ac1ff64c0be9 2ac4fb7b74c1287f6c792acad759e1ec01e18dae\n",
		82, "rebase/.git/rebase-merge/rewritten");

	FUNC4(branch_head);
	FUNC4(upstream_head);
	FUNC10(branch_ref);
	FUNC10(upstream_ref);
	FUNC7(rebase);
}