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
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 

void FUNC17(void)
{
	git_rebase *rebase;
	git_reference *upstream_ref;
	git_annotated_commit *branch_head, *upstream_head;
	git_reference *head;
	git_commit *head_commit;
	git_oid branch_id, head_id;

	FUNC1(GIT_REPOSITORY_STATE_NONE, FUNC16(repo));

	FUNC3(FUNC13(&upstream_ref, repo, "refs/heads/master"));

	FUNC3(FUNC9(&branch_id, "b146bd7608eac53d9bf9e1a6963543588b555c64"));

	FUNC3(FUNC6(&branch_head, repo, &branch_id));
	FUNC3(FUNC5(&upstream_head, repo, upstream_ref));

	FUNC3(FUNC11(&rebase, repo, branch_head, upstream_head, NULL, NULL));

	FUNC1(GIT_REPOSITORY_STATE_REBASE_MERGE, FUNC16(repo));

	FUNC9(&head_id, "efad0b11c47cb2f0220cbd6f5b0f93bb99064b00");
	FUNC3(FUNC15(&head, repo));
	FUNC3(FUNC14((git_object **)&head_commit, head, GIT_OBJECT_COMMIT));
	FUNC2(&head_id, FUNC8(head_commit));

	FUNC0("b146bd7608eac53d9bf9e1a6963543588b555c64\n", 41, "rebase/.git/ORIG_HEAD");

	FUNC0("da9c51a23d02d931a486f45ad18cda05cf5d2b94\n", 41, "rebase/.git/rebase-merge/cmt.1");
	FUNC0("8d1f13f93c4995760ac07d129246ac1ff64c0be9\n", 41, "rebase/.git/rebase-merge/cmt.2");
	FUNC0("3069cc907e6294623e5917ef6de663928c1febfb\n", 41, "rebase/.git/rebase-merge/cmt.3");
	FUNC0("588e5d2f04d49707fe4aab865e1deacaf7ef6787\n", 41, "rebase/.git/rebase-merge/cmt.4");
	FUNC0("b146bd7608eac53d9bf9e1a6963543588b555c64\n", 41, "rebase/.git/rebase-merge/cmt.5");
	FUNC0("5\n", 2, "rebase/.git/rebase-merge/end");
	FUNC0("efad0b11c47cb2f0220cbd6f5b0f93bb99064b00\n", 41, "rebase/.git/rebase-merge/onto");
	FUNC0("master\n", 7, "rebase/.git/rebase-merge/onto_name");
	FUNC0("b146bd7608eac53d9bf9e1a6963543588b555c64\n", 41, "rebase/.git/rebase-merge/orig-head");

	FUNC7(head_commit);
	FUNC12(head);
	FUNC4(branch_head);
	FUNC4(upstream_head);
	FUNC12(upstream_ref);
	FUNC10(rebase);
}