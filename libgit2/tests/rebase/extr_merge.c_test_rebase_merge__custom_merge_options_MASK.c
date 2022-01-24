#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ merge_options; } ;
typedef  TYPE_2__ git_rebase_options ;
typedef  int /*<<< orphan*/  git_rebase_operation ;
typedef  int /*<<< orphan*/  git_rebase ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_EMERGECONFLICT ; 
 int GIT_MERGE_FAIL_ON_CONFLICT ; 
 int GIT_MERGE_SKIP_REUC ; 
 TYPE_2__ GIT_REBASE_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  repo ; 

void FUNC9(void)
{
	git_rebase *rebase;
	git_reference *branch_ref, *upstream_ref;
	git_annotated_commit *branch_head, *upstream_head;
	git_rebase_options rebase_options = GIT_REBASE_OPTIONS_INIT;
	git_rebase_operation *rebase_operation;

	rebase_options.merge_options.flags |=
		GIT_MERGE_FAIL_ON_CONFLICT |
		GIT_MERGE_SKIP_REUC;

	FUNC1(FUNC8(&branch_ref, repo, "refs/heads/asparagus"));
	FUNC1(FUNC8(&upstream_ref, repo, "refs/heads/master"));

	FUNC1(FUNC3(&branch_head, repo, branch_ref));
	FUNC1(FUNC3(&upstream_head, repo, upstream_ref));

	FUNC1(FUNC5(&rebase, repo, branch_head, upstream_head, NULL, &rebase_options));

	FUNC0(GIT_EMERGECONFLICT, FUNC6(&rebase_operation, rebase));

	FUNC2(branch_head);
	FUNC2(upstream_head);
	FUNC7(branch_ref);
	FUNC7(upstream_ref);
	FUNC4(rebase);
}