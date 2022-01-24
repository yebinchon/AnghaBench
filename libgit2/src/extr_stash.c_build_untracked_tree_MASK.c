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
typedef  int uint32_t ;
struct stash_update_rules {int include_untracked; int include_ignored; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_4__ {int flags; } ;
typedef  TYPE_1__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int GIT_DIFF_INCLUDE_IGNORED ; 
 int GIT_DIFF_INCLUDE_UNTRACKED ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int GIT_DIFF_RECURSE_IGNORED_DIRS ; 
 int GIT_DIFF_RECURSE_UNTRACKED_DIRS ; 
 int GIT_STASH_INCLUDE_IGNORED ; 
 int GIT_STASH_INCLUDE_UNTRACKED ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct stash_update_rules*) ; 

__attribute__((used)) static int FUNC8(
	git_tree **tree_out,
	git_repository *repo,
	git_commit *i_commit,
	uint32_t flags)
{
	git_index *i_index = NULL;
	git_tree *i_tree = NULL;
	git_diff *diff = NULL;
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	struct stash_update_rules data = {0};
	int error;

	if ((error = FUNC5(&i_index)) < 0)
		goto cleanup;

	if (flags & GIT_STASH_INCLUDE_UNTRACKED) {
		opts.flags |= GIT_DIFF_INCLUDE_UNTRACKED |
			GIT_DIFF_RECURSE_UNTRACKED_DIRS;
		data.include_untracked = true;
	}

	if (flags & GIT_STASH_INCLUDE_IGNORED) {
		opts.flags |= GIT_DIFF_INCLUDE_IGNORED |
			GIT_DIFF_RECURSE_IGNORED_DIRS;
		data.include_ignored = true;
	}

	if ((error = FUNC1(&i_tree, i_commit)) < 0)
		goto cleanup;

	if ((error = FUNC3(&diff, repo, i_tree, &opts)) < 0)
		goto cleanup;

	if ((error = FUNC7(repo, i_index, diff, &data)) < 0)
		goto cleanup;

	error = FUNC0(tree_out, repo, i_index);

cleanup:
	FUNC2(diff);
	FUNC6(i_tree);
	FUNC4(i_index);
	return error;
}