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
typedef  int /*<<< orphan*/  git_rebase ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  GIT_REPOSITORY_STATE_NONE ; 
 int /*<<< orphan*/  GIT_REPOSITORY_STATE_REBASE_MERGE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 

void FUNC16(void)
{
	git_rebase *rebase;
	git_reference *branch1_ref, *branch2_ref, *onto_ref;
	git_annotated_commit *branch1_head, *branch2_head, *onto_head;
	git_reference *head;
	git_commit *head_commit;
	git_oid head_id;

	FUNC1(GIT_REPOSITORY_STATE_NONE, FUNC15(repo));

	FUNC3(FUNC12(&branch1_ref, repo, "refs/heads/gravy"));
	FUNC3(FUNC12(&branch2_ref, repo, "refs/heads/veal"));
	FUNC3(FUNC12(&onto_ref, repo, "refs/heads/master"));

	FUNC3(FUNC5(&branch1_head, repo, branch1_ref));
	FUNC3(FUNC5(&branch2_head, repo, branch2_ref));
	FUNC3(FUNC5(&onto_head, repo, onto_ref));

	FUNC3(FUNC10(&rebase, repo, branch1_head, branch2_head, onto_head, NULL));

	FUNC8(&head_id, "efad0b11c47cb2f0220cbd6f5b0f93bb99064b00");
	FUNC3(FUNC14(&head, repo));
	FUNC3(FUNC13((git_object **)&head_commit, head, GIT_OBJECT_COMMIT));
	FUNC2(&head_id, FUNC7(head_commit));

	FUNC0("d616d97082eb7bb2dc6f180a7cca940993b7a56f\n", 41, "rebase/.git/ORIG_HEAD");

	FUNC1(GIT_REPOSITORY_STATE_REBASE_MERGE, FUNC15(repo));

	FUNC0("d616d97082eb7bb2dc6f180a7cca940993b7a56f\n", 41, "rebase/.git/rebase-merge/cmt.1");
	FUNC0("1\n", 2, "rebase/.git/rebase-merge/end");
	FUNC0("efad0b11c47cb2f0220cbd6f5b0f93bb99064b00\n", 41, "rebase/.git/rebase-merge/onto");
	FUNC0("master\n", 7, "rebase/.git/rebase-merge/onto_name");
	FUNC0("d616d97082eb7bb2dc6f180a7cca940993b7a56f\n", 41, "rebase/.git/rebase-merge/orig-head");

	FUNC6(head_commit);
	FUNC11(head);
	FUNC4(branch1_head);
	FUNC4(branch2_head);
	FUNC4(onto_head);
	FUNC11(branch1_ref);
	FUNC11(branch2_ref);
	FUNC11(onto_ref);
	FUNC9(rebase);
}