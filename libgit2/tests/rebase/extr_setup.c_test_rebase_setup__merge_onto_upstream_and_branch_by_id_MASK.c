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
typedef  int /*<<< orphan*/  git_rebase ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_4__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  GIT_REPOSITORY_STATE_NONE ; 
 int /*<<< orphan*/  GIT_REPOSITORY_STATE_REBASE_MERGE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 

void FUNC17(void)
{
	git_rebase *rebase;
	git_oid upstream_id, branch_id, onto_id;
	git_annotated_commit *upstream_head, *branch_head, *onto_head;
	git_reference *head;
	git_commit *head_commit;
	git_oid head_id;
	git_checkout_options checkout_opts = GIT_CHECKOUT_OPTIONS_INIT;

	checkout_opts.checkout_strategy = GIT_CHECKOUT_FORCE;

	FUNC1(GIT_REPOSITORY_STATE_NONE, FUNC16(repo));

	FUNC3(FUNC15(repo, "refs/heads/beef"));
	FUNC3(FUNC6(repo, &checkout_opts));

	FUNC3(FUNC9(&upstream_id, "f87d14a4a236582a0278a916340a793714256864"));
	FUNC3(FUNC9(&branch_id, "d616d97082eb7bb2dc6f180a7cca940993b7a56f"));
	FUNC3(FUNC9(&onto_id, "efad0b11c47cb2f0220cbd6f5b0f93bb99064b00"));

	FUNC3(FUNC5(&upstream_head, repo, &upstream_id));
	FUNC3(FUNC5(&branch_head, repo, &branch_id));
	FUNC3(FUNC5(&onto_head, repo, &onto_id));

	FUNC3(FUNC11(&rebase, repo, branch_head, upstream_head, onto_head, NULL));

	FUNC9(&head_id, "efad0b11c47cb2f0220cbd6f5b0f93bb99064b00");
	FUNC3(FUNC14(&head, repo));
	FUNC3(FUNC13((git_object **)&head_commit, head, GIT_OBJECT_COMMIT));
	FUNC2(&head_id, FUNC8(head_commit));

	FUNC0("d616d97082eb7bb2dc6f180a7cca940993b7a56f\n", 41, "rebase/.git/ORIG_HEAD");

	FUNC1(GIT_REPOSITORY_STATE_REBASE_MERGE, FUNC16(repo));

	FUNC0("d616d97082eb7bb2dc6f180a7cca940993b7a56f\n", 41, "rebase/.git/rebase-merge/cmt.1");
	FUNC0("1\n", 2, "rebase/.git/rebase-merge/end");
	FUNC0("efad0b11c47cb2f0220cbd6f5b0f93bb99064b00\n", 41, "rebase/.git/rebase-merge/onto");
	FUNC0("efad0b11c47cb2f0220cbd6f5b0f93bb99064b00\n", 41, "rebase/.git/rebase-merge/onto_name");
	FUNC0("d616d97082eb7bb2dc6f180a7cca940993b7a56f\n", 41, "rebase/.git/rebase-merge/orig-head");

	FUNC7(head_commit);
	FUNC12(head);
	FUNC4(upstream_head);
	FUNC4(branch_head);
	FUNC4(onto_head);
	FUNC10(rebase);
}