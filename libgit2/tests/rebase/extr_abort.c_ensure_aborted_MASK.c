#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_status_list ;
typedef  int /*<<< orphan*/  git_reflog_entry ;
typedef  int /*<<< orphan*/  git_reflog ;
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_5__ {int /*<<< orphan*/ * ref_name; } ;
typedef  TYPE_1__ git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_REPOSITORY_STATE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*) ; 
 char* FUNC13 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo ; 

__attribute__((used)) static void FUNC20(
	git_annotated_commit *branch,
	git_annotated_commit *onto)
{
	git_reference *head_ref, *branch_ref = NULL;
	git_status_list *statuslist;
	git_reflog *reflog;
	const git_reflog_entry *reflog_entry;

	FUNC1(GIT_REPOSITORY_STATE_NONE, FUNC16(repo));

	/* Make sure the refs are updated appropriately */
	FUNC4(FUNC7(&head_ref, repo, "HEAD"));

	if (branch->ref_name == NULL)
		FUNC2(FUNC5(branch), FUNC9(head_ref));
	else {
		FUNC3("refs/heads/beef", FUNC8(head_ref));
		FUNC4(FUNC7(&branch_ref, repo, FUNC8(head_ref)));
		FUNC2(FUNC5(branch), FUNC9(branch_ref));
	}

	FUNC19(&statuslist, repo, NULL);
	FUNC1(0, FUNC17(statuslist));
	FUNC18(statuslist);

	/* Make sure the reflogs are updated appropriately */
	FUNC4(FUNC15(&reflog, repo, "HEAD"));

	FUNC0(reflog_entry = FUNC10(reflog, 0));
	FUNC2(FUNC5(onto), FUNC12(reflog_entry));
	FUNC2(FUNC5(branch), FUNC11(reflog_entry));
	FUNC3("rebase: aborting", FUNC13(reflog_entry));

	FUNC14(reflog);
	FUNC6(head_ref);
	FUNC6(branch_ref);
}