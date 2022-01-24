#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_4__ {int inmemory; } ;
typedef  TYPE_1__ git_rebase_options ;
typedef  int /*<<< orphan*/  git_rebase_operation ;
typedef  int /*<<< orphan*/  git_rebase ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 TYPE_1__ GIT_REBASE_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  signature ; 

void FUNC12(void)
{
	git_rebase *rebase;
	git_reference *branch_ref, *upstream_ref;
	git_annotated_commit *branch_head, *upstream_head;
	git_rebase_operation *rebase_operation;
	git_oid commit_id, expected_final_id;
	git_rebase_options opts = GIT_REBASE_OPTIONS_INIT;

	opts.inmemory = true;

	FUNC1(FUNC11(&branch_ref, repo, "refs/heads/barley"));
	FUNC1(FUNC11(&upstream_ref, repo, "refs/heads/master"));

	FUNC1(FUNC3(&branch_head, repo, branch_ref));
	FUNC1(FUNC3(&upstream_head, repo, upstream_ref));

	FUNC1(FUNC8(&rebase, repo, branch_head, upstream_head, NULL, &opts));

	FUNC1(FUNC9(&rebase_operation, rebase));
	FUNC1(FUNC5(&commit_id, rebase, NULL, signature,
		NULL, NULL));

	FUNC1(FUNC9(&rebase_operation, rebase));
	FUNC1(FUNC5(&commit_id, rebase, NULL, signature,
		NULL, NULL));

	FUNC1(FUNC9(&rebase_operation, rebase));
	FUNC1(FUNC5(&commit_id, rebase, NULL, signature,
		NULL, NULL));

	FUNC1(FUNC9(&rebase_operation, rebase));
	FUNC1(FUNC5(&commit_id, rebase, NULL, signature,
		NULL, NULL));

	FUNC1(FUNC9(&rebase_operation, rebase));
	FUNC1(FUNC5(&commit_id, rebase, NULL, signature,
		NULL, NULL));

	FUNC1(FUNC6(rebase, signature));

	FUNC4(&expected_final_id, "71e7ee8d4fe7d8bf0d107355197e0a953dfdb7f3");
	FUNC0(&expected_final_id, &commit_id);

	FUNC2(branch_head);
	FUNC2(upstream_head);
	FUNC10(branch_ref);
	FUNC10(upstream_ref);
	FUNC7(rebase);
}