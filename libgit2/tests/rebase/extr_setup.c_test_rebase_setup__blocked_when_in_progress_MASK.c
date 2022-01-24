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
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_REPOSITORY_STATE_NONE ; 
 int /*<<< orphan*/  GIT_REPOSITORY_STATE_REBASE_MERGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 

void FUNC10(void)
{
	git_rebase *rebase;
	git_reference *branch_ref, *upstream_ref;
	git_annotated_commit *branch_head, *upstream_head;

	FUNC0(GIT_REPOSITORY_STATE_NONE, FUNC9(repo));

	FUNC2(FUNC8(&branch_ref, repo, "refs/heads/beef"));
	FUNC2(FUNC8(&upstream_ref, repo, "refs/heads/master"));

	FUNC2(FUNC4(&branch_head, repo, branch_ref));
	FUNC2(FUNC4(&upstream_head, repo, upstream_ref));

	FUNC2(FUNC6(&rebase, repo, branch_head, upstream_head, NULL, NULL));
	FUNC5(rebase);

	FUNC0(GIT_REPOSITORY_STATE_REBASE_MERGE, FUNC9(repo));

	FUNC1(FUNC6(&rebase, repo, branch_head, upstream_head, NULL, NULL));

	FUNC3(branch_head);
	FUNC3(upstream_head);
	FUNC7(branch_ref);
	FUNC7(upstream_ref);
}