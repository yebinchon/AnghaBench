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
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_reflog_entry ;
typedef  int /*<<< orphan*/  git_reflog ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_rebase_operation ;
typedef  int /*<<< orphan*/  git_rebase ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  const* FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ **,char*,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/ * signature ; 

void FUNC32(void)
{
	git_rebase *rebase;
	git_reference *branch_ref, *upstream_ref;
	git_annotated_commit *branch_head, *upstream_head;
	git_rebase_operation *rebase_operation;
	git_oid commit_id, tree_id, parent_id;
	git_signature *author;
	git_commit *commit;
	git_reflog *reflog;
	const git_reflog_entry *reflog_entry;

	FUNC4(FUNC22(&branch_ref, repo, "refs/heads/beef"));
	FUNC4(FUNC22(&upstream_ref, repo, "refs/heads/master"));

	FUNC4(FUNC6(&branch_head, repo, branch_ref));
	FUNC4(FUNC6(&upstream_head, repo, upstream_ref));

	FUNC4(FUNC19(&rebase, repo, branch_head, upstream_head, NULL, NULL));

	FUNC4(FUNC20(&rebase_operation, rebase));
	FUNC4(FUNC17(&commit_id, rebase, NULL, signature,
		NULL, NULL));

	FUNC4(FUNC10(&commit, repo, &commit_id));

	FUNC16(&parent_id, "efad0b11c47cb2f0220cbd6f5b0f93bb99064b00");
	FUNC1(1, FUNC14(commit));
	FUNC2(&parent_id, FUNC13(commit, 0));

	FUNC16(&tree_id, "4461379789c777d2a6c1f2ee0e9d6c86731b9992");
	FUNC2(&tree_id, FUNC15(commit));

	FUNC3(NULL, FUNC12(commit));
	FUNC3("Modification 1 to beef\n", FUNC11(commit));

	FUNC4(FUNC31(&author,
		"Edward Thomson", "ethomson@edwardthomson.com", 1405621769, 0-(4*60)));
	FUNC0(FUNC29(author, FUNC7(commit)));

	FUNC0(FUNC29(signature, FUNC8(commit)));

	/* Make sure the reflogs are updated appropriately */
	FUNC4(FUNC28(&reflog, repo, "HEAD"));
	FUNC0(reflog_entry = FUNC23(reflog, 0));
	FUNC2(&parent_id, FUNC25(reflog_entry));
	FUNC2(&commit_id, FUNC24(reflog_entry));
	FUNC3("rebase: Modification 1 to beef", FUNC26(reflog_entry));

	FUNC27(reflog);
	FUNC30(author);
	FUNC9(commit);
	FUNC5(branch_head);
	FUNC5(upstream_head);
	FUNC21(branch_ref);
	FUNC21(upstream_ref);
	FUNC18(rebase);
}