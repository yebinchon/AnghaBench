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
typedef  int /*<<< orphan*/  git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  const git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(
	git_diff **out,
	git_repository *repo,
	const git_commit *commit,
	const git_diff_options *opts)
{
	git_commit *parent = NULL;
	git_diff *commit_diff = NULL;
	git_tree *old_tree = NULL, *new_tree = NULL;
	size_t parents;
	int error = 0;

	*out = NULL;

	if ((parents = FUNC3(commit)) > 1) {
		char commit_oidstr[GIT_OID_HEXSZ + 1];

		error = -1;
		FUNC6(GIT_ERROR_INVALID, "commit %s is a merge commit",
			FUNC7(commit_oidstr, GIT_OID_HEXSZ + 1, FUNC1(commit)));
		goto on_error;
	}

	if (parents > 0)
		if ((error = FUNC2(&parent, commit, 0)) < 0 ||
			(error = FUNC4(&old_tree, parent)) < 0)
				goto on_error;

	if ((error = FUNC4(&new_tree, commit)) < 0 ||
		(error = FUNC5(&commit_diff, repo, old_tree, new_tree, opts)) < 0)
			goto on_error;

	*out = commit_diff;

on_error:
	FUNC8(new_tree);
	FUNC8(old_tree);
	FUNC0(parent);

	return error;
}