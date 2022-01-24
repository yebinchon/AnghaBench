#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_9__ {unsigned int checkout_strategy; int /*<<< orphan*/ * baseline_index; } ;
struct TYPE_8__ {int flags; TYPE_5__ checkout_options; } ;
typedef  TYPE_1__ git_stash_apply_options ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 unsigned int GIT_CHECKOUT_DONT_UPDATE_INDEX ; 
 int GIT_ECONFLICT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GIT_STASH_APPLY_OPTIONS_VERSION ; 
 int /*<<< orphan*/  GIT_STASH_APPLY_PROGRESS_ANALYZE_INDEX ; 
 int /*<<< orphan*/  GIT_STASH_APPLY_PROGRESS_ANALYZE_MODIFIED ; 
 int /*<<< orphan*/  GIT_STASH_APPLY_PROGRESS_ANALYZE_UNTRACKED ; 
 int /*<<< orphan*/  GIT_STASH_APPLY_PROGRESS_CHECKOUT_MODIFIED ; 
 int /*<<< orphan*/  GIT_STASH_APPLY_PROGRESS_CHECKOUT_UNTRACKED ; 
 int /*<<< orphan*/  GIT_STASH_APPLY_PROGRESS_DONE ; 
 int /*<<< orphan*/  GIT_STASH_APPLY_PROGRESS_LOADING_STASH ; 
 int GIT_STASH_APPLY_REINSTATE_INDEX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,TYPE_1__ const*) ; 
 int FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,size_t) ; 
 int FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC19(
	git_repository *repo,
	size_t index,
	const git_stash_apply_options *given_opts)
{
	git_stash_apply_options opts;
	unsigned int checkout_strategy;
	git_commit *stash_commit = NULL;
	git_tree *stash_tree = NULL;
	git_tree *stash_parent_tree = NULL;
	git_tree *index_tree = NULL;
	git_tree *index_parent_tree = NULL;
	git_tree *untracked_tree = NULL;
	git_index *stash_adds = NULL;
	git_index *repo_index = NULL;
	git_index *unstashed_index = NULL;
	git_index *modified_index = NULL;
	git_index *untracked_index = NULL;
	int error;

	FUNC0(given_opts, GIT_STASH_APPLY_OPTIONS_VERSION, "git_stash_apply_options");

	FUNC15(&opts, given_opts);
	checkout_strategy = opts.checkout_options.checkout_strategy;

	FUNC1(opts, GIT_STASH_APPLY_PROGRESS_LOADING_STASH);

	/* Retrieve commit corresponding to the given stash */
	if ((error = FUNC16(&stash_commit, repo, index)) < 0)
		goto cleanup;

	/* Retrieve all trees in the stash */
	if ((error = FUNC17(
			&stash_tree, &stash_parent_tree, &index_tree,
			&index_parent_tree, &untracked_tree, stash_commit)) < 0)
		goto cleanup;

	/* Load repo index */
	if ((error = FUNC10(&repo_index, repo)) < 0)
		goto cleanup;

	FUNC1(opts, GIT_STASH_APPLY_PROGRESS_ANALYZE_INDEX);

	if ((error = FUNC2(repo, repo_index)) < 0)
		goto cleanup;

	/* Restore index if required */
	if ((opts.flags & GIT_STASH_APPLY_REINSTATE_INDEX) &&
		FUNC9(FUNC12(stash_parent_tree), FUNC12(index_tree))) {

		if ((error = FUNC13(
				&unstashed_index, repo, index_parent_tree, repo_index, index_tree)) < 0)
			goto cleanup;

		if (FUNC6(unstashed_index)) {
			error = GIT_ECONFLICT;
			goto cleanup;
		}

	/* Otherwise, stage any new files in the stash tree.  (Note: their
	 * previously unstaged contents are staged, not the previously staged.)
	 */
	} else if ((opts.flags & GIT_STASH_APPLY_REINSTATE_INDEX) == 0) {
		if ((error = FUNC18(
				&stash_adds, stash_parent_tree, stash_tree)) < 0 ||
			(error = FUNC14(
				&unstashed_index, repo, stash_parent_tree, repo_index, stash_adds)) < 0)
			goto cleanup;
	}

	FUNC1(opts, GIT_STASH_APPLY_PROGRESS_ANALYZE_MODIFIED);

	/* Restore modified files in workdir */
	if ((error = FUNC13(
			&modified_index, repo, stash_parent_tree, repo_index, stash_tree)) < 0)
		goto cleanup;

	/* If applicable, restore untracked / ignored files in workdir */
	if (untracked_tree) {
		FUNC1(opts, GIT_STASH_APPLY_PROGRESS_ANALYZE_UNTRACKED);

		if ((error = FUNC13(&untracked_index, repo, NULL, repo_index, untracked_tree)) < 0)
			goto cleanup;
	}

	if (untracked_index) {
		opts.checkout_options.checkout_strategy |= GIT_CHECKOUT_DONT_UPDATE_INDEX;

		FUNC1(opts, GIT_STASH_APPLY_PROGRESS_CHECKOUT_UNTRACKED);

		if ((error = FUNC3(repo, untracked_index, &opts.checkout_options)) < 0)
			goto cleanup;

		opts.checkout_options.checkout_strategy = checkout_strategy;
	}


	/* If there are conflicts in the modified index, then we need to actually
	 * check that out as the repo's index.  Otherwise, we don't update the
	 * index.
	 */

	if (!FUNC6(modified_index))
		opts.checkout_options.checkout_strategy |= GIT_CHECKOUT_DONT_UPDATE_INDEX;

	/* Check out the modified index using the existing repo index as baseline,
	 * so that existing modifications in the index can be rewritten even when
	 * checking out safely.
	 */
	opts.checkout_options.baseline_index = repo_index;

	FUNC1(opts, GIT_STASH_APPLY_PROGRESS_CHECKOUT_MODIFIED);

	if ((error = FUNC3(repo, modified_index, &opts.checkout_options)) < 0)
		goto cleanup;

	if (unstashed_index && !FUNC6(modified_index)) {
		if ((error = FUNC7(repo_index, unstashed_index)) < 0)
			goto cleanup;
	}

	FUNC1(opts, GIT_STASH_APPLY_PROGRESS_DONE);

	error = FUNC8(repo_index);

cleanup:
	FUNC5(untracked_index);
	FUNC5(modified_index);
	FUNC5(unstashed_index);
	FUNC5(stash_adds);
	FUNC5(repo_index);
	FUNC11(untracked_tree);
	FUNC11(index_parent_tree);
	FUNC11(index_tree);
	FUNC11(stash_parent_tree);
	FUNC11(stash_tree);
	FUNC4(stash_commit);
	return error;
}