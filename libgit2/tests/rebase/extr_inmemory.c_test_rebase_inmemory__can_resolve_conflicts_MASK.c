#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_status_list ;
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_10__ {int inmemory; } ;
typedef  TYPE_2__ git_rebase_options ;
struct TYPE_11__ {int /*<<< orphan*/  id; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ git_rebase_operation ;
typedef  int /*<<< orphan*/  git_rebase ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_9__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_12__ {char* path; int /*<<< orphan*/  id; int /*<<< orphan*/  mode; TYPE_1__ member_0; } ;
typedef  TYPE_4__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_EUNMERGED ; 
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  GIT_REBASE_OPERATION_PICK ; 
 TYPE_2__ GIT_REBASE_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  signature ; 

void FUNC23(void)
{
	git_rebase *rebase;
	git_reference *branch_ref, *upstream_ref;
	git_annotated_commit *branch_head, *upstream_head;
	git_rebase_operation *rebase_operation;
	git_status_list *status_list;
	git_oid pick_id, commit_id, expected_commit_id;
	git_index *rebase_index, *repo_index;
	git_index_entry resolution = {0};
	git_rebase_options opts = GIT_REBASE_OPTIONS_INIT;

	opts.inmemory = true;

	FUNC4(FUNC18(&branch_ref, repo, "refs/heads/asparagus"));
	FUNC4(FUNC18(&upstream_ref, repo, "refs/heads/master"));

	FUNC4(FUNC6(&branch_head, repo, branch_ref));
	FUNC4(FUNC6(&upstream_head, repo, upstream_ref));

	FUNC4(FUNC14(&rebase, repo, branch_head, upstream_head, NULL, &opts));

	FUNC4(FUNC16(&rebase_operation, rebase));

	FUNC11(&pick_id, "33f915f9e4dbd9f4b24430e48731a59b45b15500");

	FUNC1(GIT_REBASE_OPERATION_PICK, rebase_operation->type);
	FUNC2(&pick_id, &rebase_operation->id);

	/* ensure that we did not do anything stupid to the workdir or repo index */
	FUNC4(FUNC19(&repo_index, repo));
	FUNC0(!FUNC10(repo_index));

	FUNC4(FUNC22(&status_list, repo, NULL));
	FUNC1(0, FUNC20(status_list));

	/* but that the index returned from rebase does have conflicts */
	FUNC4(FUNC15(&rebase_index, rebase));
	FUNC0(FUNC10(rebase_index));

	FUNC3(GIT_EUNMERGED, FUNC12(&commit_id, rebase, NULL, signature, NULL, NULL));

	/* ensure that we can work with the in-memory index to resolve the conflict */
	resolution.path = "asparagus.txt";
	resolution.mode = GIT_FILEMODE_BLOB;
	FUNC11(&resolution.id, "414dfc71ead79c07acd4ea47fecf91f289afc4b9");
	FUNC4(FUNC8(rebase_index, "asparagus.txt"));
	FUNC4(FUNC7(rebase_index, &resolution));

	/* and finally create a commit for the resolved rebase operation */
	FUNC4(FUNC12(&commit_id, rebase, NULL, signature, NULL, NULL));

	FUNC4(FUNC11(&expected_commit_id, "db7af47222181e548810da2ab5fec0e9357c5637"));
	FUNC2(&commit_id, &expected_commit_id);

	FUNC21(status_list);
	FUNC5(branch_head);
	FUNC5(upstream_head);
	FUNC17(branch_ref);
	FUNC17(upstream_ref);
	FUNC9(repo_index);
	FUNC9(rebase_index);
	FUNC13(rebase);
}