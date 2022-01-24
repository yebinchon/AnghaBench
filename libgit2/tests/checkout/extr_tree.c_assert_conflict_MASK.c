#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_3__ {int /*<<< orphan*/  checkout_strategy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 int /*<<< orphan*/  GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  GIT_ECONFLICT ; 
 int /*<<< orphan*/  GIT_OBJECT_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * g_object ; 
 TYPE_1__ g_opts ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*) ; 

void FUNC19(
	const char *entry_path,
	const char *new_content,
	const char *parent_sha,
	const char *commit_sha)
{
	git_index *index;
	git_object *hack_tree;
	git_reference *branch, *head;
	git_buf file_path = GIT_BUF_INIT;

	FUNC2(FUNC17(&index, g_repo));

	/* Create a branch pointing at the parent */
	FUNC2(FUNC18(&g_object, g_repo, parent_sha));
	FUNC2(FUNC3(&branch, g_repo,
		"potential_conflict", (git_commit *)g_object, 0));

	/* Make HEAD point to this branch */
	FUNC2(FUNC16(
		&head, g_repo, "HEAD", FUNC15(branch), 1, NULL));
	FUNC14(head);
	FUNC14(branch);

	/* Checkout the parent */
	g_opts.checkout_strategy = GIT_CHECKOUT_FORCE;
	FUNC2(FUNC7(g_repo, g_object, &g_opts));

	/* Hack-ishy workaound to ensure *all* the index entries
	 * match the content of the tree
	 */
	FUNC2(FUNC13(&hack_tree, g_object, GIT_OBJECT_TREE));
	FUNC2(FUNC10(index, (git_tree *)hack_tree));
	FUNC2(FUNC11(index));
	FUNC12(hack_tree);
	FUNC12(g_object);
	g_object = NULL;

	/* Create a conflicting file */
	FUNC2(FUNC6(&file_path, "./testrepo", entry_path));
	FUNC1(FUNC4(&file_path), new_content);
	FUNC5(&file_path);

	/* Trying to checkout the original commit */
	FUNC2(FUNC18(&g_object, g_repo, commit_sha));

	g_opts.checkout_strategy = GIT_CHECKOUT_SAFE;
	FUNC0(
		GIT_ECONFLICT, FUNC7(g_repo, g_object, &g_opts));

	/* Stage the conflicting change */
	FUNC2(FUNC8(index, entry_path));
	FUNC2(FUNC11(index));
	FUNC9(index);

	FUNC0(
		GIT_ECONFLICT, FUNC7(g_repo, g_object, &g_opts));
}