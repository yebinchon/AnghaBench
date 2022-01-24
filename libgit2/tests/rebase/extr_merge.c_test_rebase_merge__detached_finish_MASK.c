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
typedef  int /*<<< orphan*/  git_reflog_entry ;
typedef  int /*<<< orphan*/  git_reflog ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_rebase_operation ;
typedef  int /*<<< orphan*/  git_rebase ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_4__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_ITEROVER ; 
 int /*<<< orphan*/  GIT_REFERENCE_DIRECT ; 
 int /*<<< orphan*/  GIT_REPOSITORY_STATE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  signature ; 

void FUNC24(void)
{
	git_rebase *rebase;
	git_reference *branch_ref, *upstream_ref, *head_ref;
	git_annotated_commit *branch_head, *upstream_head;
	git_rebase_operation *rebase_operation;
	git_oid commit_id;
	git_reflog *reflog;
	const git_reflog_entry *reflog_entry;
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	int error;

	FUNC4(FUNC15(&branch_ref, repo, "refs/heads/gravy"));
	FUNC4(FUNC15(&upstream_ref, repo, "refs/heads/veal"));

	FUNC4(FUNC6(&branch_head, repo, branch_ref));
	FUNC4(FUNC6(&upstream_head, repo, upstream_ref));

	FUNC4(FUNC22(repo, branch_head));
	opts.checkout_strategy = GIT_CHECKOUT_FORCE;
	FUNC8(repo, &opts);

	FUNC4(FUNC12(&rebase, repo, NULL, upstream_head, NULL, NULL));

	FUNC4(FUNC13(&rebase_operation, rebase));
	FUNC4(FUNC9(&commit_id, rebase, NULL, signature,
		NULL, NULL));

	FUNC3(error = FUNC13(&rebase_operation, rebase));
	FUNC1(GIT_ITEROVER, error);

	FUNC4(FUNC10(rebase, signature));

	FUNC1(GIT_REPOSITORY_STATE_NONE, FUNC23(repo));

	FUNC4(FUNC15(&head_ref, repo, "HEAD"));
	FUNC1(GIT_REFERENCE_DIRECT, FUNC16(head_ref));

	/* Make sure the reflogs are updated appropriately */
	FUNC4(FUNC21(&reflog, repo, "HEAD"));
	FUNC0(reflog_entry = FUNC17(reflog, 0));
	FUNC2(FUNC7(upstream_head), FUNC19(reflog_entry));
	FUNC2(&commit_id, FUNC18(reflog_entry));

	FUNC20(reflog);
	FUNC5(branch_head);
	FUNC5(upstream_head);
	FUNC14(head_ref);
	FUNC14(branch_ref);
	FUNC14(upstream_ref);
	FUNC11(rebase);
}