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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_merge_options ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*) ; 

int FUNC8(
	git_index **out,
	git_repository *repo,
	git_commit *revert_commit,
	git_commit *our_commit,
	unsigned int mainline,
	const git_merge_options *merge_opts)
{
	git_commit *parent_commit = NULL;
	git_tree *parent_tree = NULL, *our_tree = NULL, *revert_tree = NULL;
	int parent = 0, error = 0;

	FUNC0(out && repo && revert_commit && our_commit);

	if (FUNC3(revert_commit) > 1) {
		if (!mainline)
			return FUNC7(revert_commit,
				"mainline branch is not specified but %s is a merge commit");

		parent = mainline;
	} else {
		if (mainline)
			return FUNC7(revert_commit,
				"mainline branch specified but %s is not a merge commit");

		parent = FUNC3(revert_commit);
	}

	if (parent &&
		((error = FUNC2(&parent_commit, revert_commit, (parent - 1))) < 0 ||
		(error = FUNC4(&parent_tree, parent_commit)) < 0))
		goto done;

	if ((error = FUNC4(&revert_tree, revert_commit)) < 0 ||
		(error = FUNC4(&our_tree, our_commit)) < 0)
		goto done;

	error = FUNC5(out, repo, revert_tree, our_tree, parent_tree, merge_opts);

done:
	FUNC6(parent_tree);
	FUNC6(our_tree);
	FUNC6(revert_tree);
	FUNC1(parent_commit);

	return error;
}