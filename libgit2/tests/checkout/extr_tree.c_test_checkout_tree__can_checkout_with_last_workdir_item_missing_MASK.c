#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 int GIT_CHECKOUT_FORCE ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

void FUNC16(void)
{
	git_index *index = NULL;
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_oid tree_id, commit_id;
	git_tree *tree = NULL;
	git_commit *commit = NULL;

	FUNC10(&index, g_repo);

	opts.checkout_strategy = GIT_CHECKOUT_FORCE;

	FUNC1(FUNC9(&commit_id, g_repo, "refs/heads/master"));
	FUNC1(FUNC4(&commit, g_repo, &commit_id));

	FUNC1(FUNC2(g_repo, (git_object *)commit, &opts));
	FUNC1(FUNC11(g_repo, "refs/heads/master"));

	FUNC1(FUNC14("./testrepo/this-is-dir", 0777));
	FUNC0("./testrepo/this-is-dir/contained_file", "content\n");

	FUNC1(FUNC5(index, "this-is-dir/contained_file"));
	FUNC1(FUNC7(index));

	FUNC1(FUNC8(&tree_id, index));
	FUNC1(FUNC13(&tree, g_repo, &tree_id));

	FUNC1(FUNC15("./testrepo/this-is-dir/contained_file"));

	opts.checkout_strategy = GIT_CHECKOUT_SAFE;

	opts.checkout_strategy = 1;
	FUNC2(g_repo, (git_object *)tree, &opts);

	FUNC12(tree);
	FUNC3(commit);
	FUNC6(index);
}