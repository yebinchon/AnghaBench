#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_7__ {int /*<<< orphan*/  checkout_options; } ;
typedef  TYPE_1__ git_rebase_options ;
typedef  int /*<<< orphan*/  git_rebase_operation ;
typedef  int /*<<< orphan*/  git_rebase ;
struct TYPE_8__ {int* progress_payload; int /*<<< orphan*/  progress_cb; } ;
typedef  TYPE_2__ git_checkout_options ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ; 
 TYPE_1__ GIT_REBASE_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  rebase_checkout_progress_cb ; 
 int /*<<< orphan*/  repo ; 

void FUNC11(void)
{
	git_rebase *rebase;
	git_reference *branch_ref, *upstream_ref;
	git_annotated_commit *branch_head, *upstream_head;
	git_rebase_options rebase_options = GIT_REBASE_OPTIONS_INIT;
	git_checkout_options checkout_options = GIT_CHECKOUT_OPTIONS_INIT;
	git_rebase_operation *rebase_operation;
	int called = 0;

	checkout_options.progress_cb = rebase_checkout_progress_cb;
	checkout_options.progress_payload = &called;

	FUNC10(&rebase_options.checkout_options, &checkout_options,
		sizeof(git_checkout_options));

	FUNC1(FUNC9(&branch_ref, repo, "refs/heads/beef"));
	FUNC1(FUNC9(&upstream_ref, repo, "refs/heads/master"));

	FUNC1(FUNC3(&branch_head, repo, branch_ref));
	FUNC1(FUNC3(&upstream_head, repo, upstream_ref));

	called = 0;
	FUNC1(FUNC6(&rebase, repo, branch_head, upstream_head, NULL, &rebase_options));
	FUNC0(1, called);

	called = 0;
	FUNC1(FUNC7(&rebase_operation, rebase));
	FUNC0(1, called);

	called = 0;
	FUNC1(FUNC4(rebase));
	FUNC0(1, called);

	FUNC2(branch_head);
	FUNC2(upstream_head);
	FUNC8(branch_ref);
	FUNC8(upstream_ref);
	FUNC5(rebase);
}