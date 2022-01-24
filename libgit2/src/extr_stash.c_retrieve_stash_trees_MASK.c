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
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(
	git_tree **out_stash_tree,
	git_tree **out_base_tree,
	git_tree **out_index_tree,
	git_tree **out_index_parent_tree,
	git_tree **out_untracked_tree,
	git_commit *stash_commit)
{
	git_tree *stash_tree = NULL;
	git_commit *base_commit = NULL;
	git_tree *base_tree = NULL;
	git_commit *index_commit = NULL;
	git_tree *index_tree = NULL;
	git_commit *index_parent_commit = NULL;
	git_tree *index_parent_tree = NULL;
	git_commit *untracked_commit = NULL;
	git_tree *untracked_tree = NULL;
	int error;

	if ((error = FUNC3(&stash_tree, stash_commit)) < 0)
		goto cleanup;

	if ((error = FUNC1(&base_commit, stash_commit, 0)) < 0)
		goto cleanup;
	if ((error = FUNC3(&base_tree, base_commit)) < 0)
		goto cleanup;

	if ((error = FUNC1(&index_commit, stash_commit, 1)) < 0)
		goto cleanup;
	if ((error = FUNC3(&index_tree, index_commit)) < 0)
		goto cleanup;

	if ((error = FUNC1(&index_parent_commit, index_commit, 0)) < 0)
		goto cleanup;
	if ((error = FUNC3(&index_parent_tree, index_parent_commit)) < 0)
		goto cleanup;

	if (FUNC2(stash_commit) == 3) {
		if ((error = FUNC1(&untracked_commit, stash_commit, 2)) < 0)
			goto cleanup;
		if ((error = FUNC3(&untracked_tree, untracked_commit)) < 0)
			goto cleanup;
	}

	*out_stash_tree = stash_tree;
	*out_base_tree = base_tree;
	*out_index_tree = index_tree;
	*out_index_parent_tree = index_parent_tree;
	*out_untracked_tree = untracked_tree;

cleanup:
	FUNC0(untracked_commit);
	FUNC0(index_parent_commit);
	FUNC0(index_commit);
	FUNC0(base_commit);
	if (error < 0) {
		FUNC4(stash_tree);
		FUNC4(base_tree);
		FUNC4(index_tree);
		FUNC4(index_parent_tree);
		FUNC4(untracked_tree);
	}
	return error;
}