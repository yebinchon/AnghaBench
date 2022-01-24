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
typedef  int /*<<< orphan*/  git_rebase ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_REPOSITORY_STATE_REBASE_MERGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 

void FUNC10(void)
{
	git_rebase *rebase;
	git_oid branch_id, onto_id;
	git_annotated_commit *branch_head, *onto_head;

	FUNC1(FUNC5(&branch_id, "b146bd7608eac53d9bf9e1a6963543588b555c64"));
	FUNC1(FUNC5(&onto_id, "efad0b11c47cb2f0220cbd6f5b0f93bb99064b00"));

	FUNC1(FUNC4(&branch_head, repo, &branch_id));
	FUNC1(FUNC4(&onto_head, repo, &onto_id));

	FUNC1(FUNC8(&rebase, repo, branch_head, NULL, onto_head, NULL));
	FUNC0(GIT_REPOSITORY_STATE_REBASE_MERGE, FUNC9(repo));

	FUNC1(FUNC6(rebase));
	FUNC2(branch_head, onto_head);

	FUNC3(branch_head);
	FUNC3(onto_head);

	FUNC7(rebase);
}