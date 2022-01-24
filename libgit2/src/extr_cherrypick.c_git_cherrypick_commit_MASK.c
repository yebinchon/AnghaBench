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
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(
	git_index **out,
	git_repository *repo,
	git_commit *cherrypick_commit,
	git_commit *our_commit,
	unsigned int mainline,
	const git_merge_options *merge_opts)
{
	git_commit *parent_commit = NULL;
	git_tree *parent_tree = NULL, *our_tree = NULL, *cherrypick_tree = NULL;
	int parent = 0, error = 0;

	FUNC0(out && repo && cherrypick_commit && our_commit);

	if (FUNC4(cherrypick_commit) > 1) {
		if (!mainline)
			return FUNC1(cherrypick_commit,
				"mainline branch is not specified but %s is a merge commit");

		parent = mainline;
	} else {
		if (mainline)
			return FUNC1(cherrypick_commit,
				"mainline branch specified but %s is not a merge commit");

		parent = FUNC4(cherrypick_commit);
	}

	if (parent &&
		((error = FUNC3(&parent_commit, cherrypick_commit, (parent - 1))) < 0 ||
		(error = FUNC5(&parent_tree, parent_commit)) < 0))
		goto done;

	if ((error = FUNC5(&cherrypick_tree, cherrypick_commit)) < 0 ||
		(error = FUNC5(&our_tree, our_commit)) < 0)
		goto done;

	error = FUNC6(out, repo, parent_tree, our_tree, cherrypick_tree, merge_opts);

done:
	FUNC7(parent_tree);
	FUNC7(our_tree);
	FUNC7(cherrypick_tree);
	FUNC2(parent_commit);

	return error;
}