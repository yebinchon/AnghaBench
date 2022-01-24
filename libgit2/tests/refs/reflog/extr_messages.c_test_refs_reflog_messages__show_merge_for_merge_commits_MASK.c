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
struct git_commit {int dummy; } ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,struct git_commit const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(void)
{
	git_oid b1_oid;
	git_oid b2_oid;
	git_oid merge_commit_oid;
	git_commit *b1_commit;
	git_commit *b2_commit;
	git_signature *s;
	git_commit *parent_commits[2];
	git_tree *tree;

	FUNC0(FUNC9(&s, "alice", "alice@example.com"));

	FUNC0(FUNC7(&b1_oid, g_repo, "HEAD"));
	FUNC0(FUNC7(&b2_oid, g_repo, "refs/heads/test"));

	FUNC0(FUNC4(&b1_commit, g_repo, &b1_oid));
	FUNC0(FUNC4(&b2_commit, g_repo, &b2_oid));

	parent_commits[0] = b1_commit;
	parent_commits[1] = b2_commit;

	FUNC0(FUNC5(&tree, b1_commit));

	FUNC0(FUNC2(&merge_commit_oid,
		g_repo, "HEAD", s, s, NULL,
		"Merge commit", tree,
		2, (const struct git_commit **) parent_commits));

	FUNC1(g_repo, GIT_HEAD_FILE, 0,
		NULL,
		FUNC6(&merge_commit_oid),
		NULL, "commit (merge): Merge commit");

	FUNC10(tree);
	FUNC3(b1_commit);
	FUNC3(b2_commit);
	FUNC8(s);
}