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
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ITEROVER ; 
 TYPE_1__ GIT_REBASE_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  signature ; 

void FUNC15(void)
{
	git_rebase *rebase;
	git_reference *branch_ref, *upstream_ref;
	git_annotated_commit *branch_head, *upstream_head;
	git_rebase_operation *rebase_operation;
	git_oid commit_id, tree_id;
	git_commit *commit;
	git_rebase_options opts = GIT_REBASE_OPTIONS_INIT;

	opts.inmemory = true;

	FUNC8(&tree_id, "a4d6d9c3d57308fd8e320cf2525bae8f1adafa57");

	FUNC2(FUNC14(&branch_ref, repo, "refs/heads/deep_gravy"));
	FUNC2(FUNC14(&upstream_ref, repo, "refs/heads/veal"));

	FUNC2(FUNC4(&branch_head, repo, branch_ref));
	FUNC2(FUNC4(&upstream_head, repo, upstream_ref));

	FUNC2(FUNC11(&rebase, repo, branch_head, upstream_head, NULL, &opts));

	FUNC2(FUNC12(&rebase_operation, rebase));
	FUNC2(FUNC9(&commit_id, rebase, NULL, signature,
		NULL, NULL));

	FUNC2(FUNC12(&rebase_operation, rebase));
	FUNC2(FUNC9(&commit_id, rebase, NULL, signature,
		NULL, NULL));

	FUNC1(GIT_ITEROVER, FUNC12(&rebase_operation, rebase));

	FUNC2(FUNC6(&commit, repo, &commit_id));
	FUNC0(&tree_id, FUNC7(commit));

	FUNC5(commit);
	FUNC3(branch_head);
	FUNC3(upstream_head);
	FUNC13(branch_ref);
	FUNC13(upstream_ref);
	FUNC10(rebase);
}