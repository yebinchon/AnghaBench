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
	git_reference *branch_ref, *upstream_ref;
	git_annotated_commit *branch_head, *upstream_head;
	git_reference *head;
	git_commit *head_commit;
	git_oid head_id;

	FUNC1(GIT_REPOSITORY_STATE_NONE, FUNC15(repo));

	FUNC3(FUNC12(&branch_ref, repo, "refs/heads/barley"));
	FUNC3(FUNC12(&upstream_ref, repo, "refs/heads/master"));

	FUNC3(FUNC5(&branch_head, repo, branch_ref));
	FUNC3(FUNC5(&upstream_head, repo, upstream_ref));

	FUNC3(FUNC10(&rebase, repo, branch_head, upstream_head, NULL, NULL));

	FUNC1(GIT_REPOSITORY_STATE_REBASE_MERGE, FUNC15(repo));

	FUNC8(&head_id, "efad0b11c47cb2f0220cbd6f5b0f93bb99064b00");
	FUNC3(FUNC14(&head, repo));
	FUNC3(FUNC13((git_object **)&head_commit, head, GIT_OBJECT_COMMIT));
	FUNC2(&head_id, FUNC7(head_commit));

	FUNC0("12c084412b952396962eb420716df01022b847cc\n", 41, "rebase/.git/ORIG_HEAD");

	FUNC0("aa4c42aecdfc7cd989bbc3209934ea7cda3f4d88\n", 41, "rebase/.git/rebase-merge/cmt.1");
	FUNC0("e4f809f826c1a9fc929874bc0e4644dd2f2a1af4\n", 41, "rebase/.git/rebase-merge/cmt.2");
	FUNC0("9539b2cc291d6a6b1b266df8474d31fdd344dd79\n", 41, "rebase/.git/rebase-merge/cmt.3");
	FUNC0("013cc32d341bab0e6f039f50f153c18986f16c58\n", 41, "rebase/.git/rebase-merge/cmt.4");
	FUNC0("12c084412b952396962eb420716df01022b847cc\n", 41, "rebase/.git/rebase-merge/cmt.5");
	FUNC0("5\n", 2, "rebase/.git/rebase-merge/end");
	FUNC0("efad0b11c47cb2f0220cbd6f5b0f93bb99064b00\n", 41, "rebase/.git/rebase-merge/onto");
	FUNC0("master\n", 7, "rebase/.git/rebase-merge/onto_name");
	FUNC0("12c084412b952396962eb420716df01022b847cc\n", 41, "rebase/.git/rebase-merge/orig-head");

	FUNC6(head_commit);
	FUNC11(head);
	FUNC4(branch_head);
	FUNC4(upstream_head);
	FUNC11(branch_ref);
	FUNC11(upstream_ref);
	FUNC9(rebase);
}