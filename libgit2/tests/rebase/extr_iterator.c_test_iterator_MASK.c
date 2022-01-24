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
 int /*<<< orphan*/  GIT_ITEROVER ; 
 int GIT_REBASE_NO_OPERATION ; 
 TYPE_1__ GIT_REBASE_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  signature ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 

void FUNC15(bool inmemory)
{
	git_rebase *rebase;
	git_rebase_options opts = GIT_REBASE_OPTIONS_INIT;
	git_reference *branch_ref, *upstream_ref;
	git_annotated_commit *branch_head, *upstream_head;
	git_rebase_operation *rebase_operation;
	git_oid commit_id, expected_id;
	int error;

	opts.inmemory = inmemory;

	FUNC3(FUNC13(&branch_ref, repo, "refs/heads/beef"));
	FUNC3(FUNC13(&upstream_ref, repo, "refs/heads/master"));

	FUNC3(FUNC5(&branch_head, repo, branch_ref));
	FUNC3(FUNC5(&upstream_head, repo, upstream_ref));

	FUNC3(FUNC9(&rebase, repo, branch_head, upstream_head, NULL, &opts));
	FUNC14(rebase, GIT_REBASE_NO_OPERATION);

	if (!inmemory) {
		FUNC8(rebase);
		FUNC3(FUNC11(&rebase, repo, NULL));
	}

	FUNC3(FUNC10(&rebase_operation, rebase));
	FUNC3(FUNC7(&commit_id, rebase, NULL, signature,
		NULL, NULL));
	FUNC14(rebase, 0);

	FUNC6(&expected_id, "776e4c48922799f903f03f5f6e51da8b01e4cce0");
	FUNC1(&expected_id, &commit_id);

	FUNC3(FUNC10(&rebase_operation, rebase));
	FUNC3(FUNC7(&commit_id, rebase, NULL, signature,
		NULL, NULL));
	FUNC14(rebase, 1);

	FUNC6(&expected_id, "ba1f9b4fd5cf8151f7818be2111cc0869f1eb95a");
	FUNC1(&expected_id, &commit_id);

	FUNC3(FUNC10(&rebase_operation, rebase));
	FUNC3(FUNC7(&commit_id, rebase, NULL, signature,
		NULL, NULL));
	FUNC14(rebase, 2);

	FUNC6(&expected_id, "948b12fe18b84f756223a61bece4c307787cd5d4");
	FUNC1(&expected_id, &commit_id);

	if (!inmemory) {
		FUNC8(rebase);
		FUNC3(FUNC11(&rebase, repo, NULL));
	}

	FUNC3(FUNC10(&rebase_operation, rebase));
	FUNC3(FUNC7(&commit_id, rebase, NULL, signature,
		NULL, NULL));
	FUNC14(rebase, 3);

	FUNC6(&expected_id, "d9d5d59d72c9968687f9462578d79878cd80e781");
	FUNC1(&expected_id, &commit_id);

	FUNC3(FUNC10(&rebase_operation, rebase));
	FUNC3(FUNC7(&commit_id, rebase, NULL, signature,
		NULL, NULL));
	FUNC14(rebase, 4);

	FUNC6(&expected_id, "9cf383c0a125d89e742c5dec58ed277dd07588b3");
	FUNC1(&expected_id, &commit_id);

	FUNC2(error = FUNC10(&rebase_operation, rebase));
	FUNC0(GIT_ITEROVER, error);
	FUNC14(rebase, 4);

	FUNC4(branch_head);
	FUNC4(upstream_head);
	FUNC12(branch_ref);
	FUNC12(upstream_ref);
	FUNC8(rebase);
}