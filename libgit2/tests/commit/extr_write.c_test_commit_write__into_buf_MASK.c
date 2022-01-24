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
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  committer_email ; 
 int /*<<< orphan*/  committer_name ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  parent_id_str ; 
 int /*<<< orphan*/  root_commit_message ; 
 int /*<<< orphan*/  tree_id_str ; 

void FUNC11(void)
{
	git_oid tree_id;
	git_signature *author, *committer;
	git_tree *tree;
	git_commit *parent;
	git_oid parent_id;
	git_buf commit = GIT_BUF_INIT;

	FUNC6(&tree_id, tree_id_str);
	FUNC1(FUNC10(&tree, g_repo, &tree_id));

	/* create signatures */
	FUNC1(FUNC8(&committer, committer_name, committer_email, 123456789, 60));
	FUNC1(FUNC8(&author, committer_name, committer_email, 987654321, 90));

	FUNC6(&parent_id, parent_id_str);
	FUNC1(FUNC5(&parent, g_repo, &parent_id));

	FUNC1(FUNC3(&commit, g_repo, author, committer,
					     NULL, root_commit_message, tree, 1, (const git_commit **) &parent));

	FUNC0(commit.ptr,
			  "tree 1810dff58d8a660512d4832e740f692884338ccd\n\
parent 8496071c1b46c854b31185ea97743be6a8774479\n\
author Vicent Marti <vicent@github.com> 987654321 +0130\n\
committer Vicent Marti <vicent@github.com> 123456789 +0100\n\
\n\
This is a root commit\n\
   This is a root commit and should be the only one in this branch\n\
");

	FUNC2(&commit);
	FUNC9(tree);
	FUNC4(parent);
	FUNC7(author);
	FUNC7(committer);
}