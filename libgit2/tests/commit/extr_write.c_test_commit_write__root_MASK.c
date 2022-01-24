#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_7__ {int /*<<< orphan*/  name; int /*<<< orphan*/  email; } ;
typedef  TYPE_1__ git_signature ;
typedef  int /*<<< orphan*/  git_reflog_entry ;
typedef  int /*<<< orphan*/  git_reflog ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_8__ {int /*<<< orphan*/  name; int /*<<< orphan*/  email; } ;

/* Variables and functions */
 scalar_t__ GIT_REFERENCE_SYMBOLIC ; 
 int /*<<< orphan*/  branch ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  commit ; 
 int /*<<< orphan*/  committer_email ; 
 int /*<<< orphan*/  committer_name ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC19 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/ * head_old ; 
 int /*<<< orphan*/  root_commit_message ; 
 int /*<<< orphan*/  root_reflog_message ; 
 int /*<<< orphan*/  tree_id_str ; 

void FUNC27(void)
{
	git_oid tree_id, commit_id;
	const git_oid *branch_oid;
	git_signature *author, *committer;
	const char *branch_name = "refs/heads/root-commit-branch";
	git_tree *tree;
	git_reflog *log;
	const git_reflog_entry *entry;

	FUNC11(&tree_id, tree_id_str);
	FUNC4(FUNC26(&tree, g_repo, &tree_id));

	/* create signatures */
	FUNC4(FUNC25(&committer, committer_name, committer_email, 123456789, 60));
	FUNC4(FUNC25(&author, committer_name, committer_email, 987654321, 90));

	/* First we need to update HEAD so it points to our non-existant branch */
	FUNC4(FUNC13(&head, g_repo, "HEAD"));
	FUNC0(FUNC17(head) == GIT_REFERENCE_SYMBOLIC);
	head_old = FUNC5(FUNC15(head));
	FUNC0(head_old != NULL);
	FUNC12(head);

	FUNC4(FUNC14(&head, g_repo, "HEAD", branch_name, 1, NULL));

	FUNC4(FUNC6(
		&commit_id, /* out id */
		g_repo,
		"HEAD",
		author,
		committer,
		NULL,
		root_commit_message,
		tree,
		0));

	FUNC10((git_object *)tree);
	FUNC24(author);

	/*
	 * The fact that creating a commit works has already been
	 * tested. Here we just make sure it's our commit and that it was
	 * written as a root commit.
	 */
	FUNC4(FUNC7(&commit, g_repo, &commit_id));
	FUNC0(FUNC9(commit) == 0);
	FUNC4(FUNC13(&branch, g_repo, branch_name));
	branch_oid = FUNC16(branch);
	FUNC2(branch_oid, &commit_id);
	FUNC3(root_commit_message, FUNC8(commit));

	FUNC4(FUNC23(&log, g_repo, branch_name));
	FUNC1(1, FUNC21(log));
	entry = FUNC18(log, 0);
	FUNC3(committer->email, FUNC19(entry)->email);
	FUNC3(committer->name, FUNC19(entry)->name);
	FUNC3(root_reflog_message, FUNC20(entry));

	FUNC24(committer);
	FUNC22(log);
}