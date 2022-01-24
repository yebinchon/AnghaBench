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
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  signature ; 

void FUNC10(void)
{
	git_rebase *rebase;
	git_reference *branch_ref, *upstream_ref;
	git_annotated_commit *branch_head, *upstream_head;
	git_rebase_operation *rebase_operation;
	git_oid commit_id;

	FUNC1(FUNC9(&branch_ref, repo, "refs/heads/beef"));
	FUNC1(FUNC9(&upstream_ref, repo, "refs/heads/master"));

	FUNC1(FUNC3(&branch_head, repo, branch_ref));
	FUNC1(FUNC3(&upstream_head, repo, upstream_ref));

	FUNC1(FUNC6(&rebase, repo, branch_head, upstream_head, NULL, NULL));

	FUNC1(FUNC7(&rebase_operation, rebase));
	FUNC1(FUNC4(&commit_id, rebase, NULL, signature,
		NULL, NULL));

	FUNC1(FUNC7(&rebase_operation, rebase));
	FUNC1(FUNC4(&commit_id, rebase, NULL, signature,
		NULL, NULL));

	FUNC0(
		"da9c51a23d02d931a486f45ad18cda05cf5d2b94 776e4c48922799f903f03f5f6e51da8b01e4cce0\n"
		"8d1f13f93c4995760ac07d129246ac1ff64c0be9 ba1f9b4fd5cf8151f7818be2111cc0869f1eb95a\n",
		164, "rebase/.git/rebase-merge/rewritten");

	FUNC2(branch_head);
	FUNC2(upstream_head);
	FUNC8(branch_ref);
	FUNC8(upstream_ref);
	FUNC5(rebase);
}