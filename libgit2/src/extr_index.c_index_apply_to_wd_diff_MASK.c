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
struct foreach_diff_data {unsigned int member_2; void* member_4; int /*<<< orphan*/ * pathspec; int /*<<< orphan*/  member_3; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  git_strarray ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_pathspec ;
typedef  int /*<<< orphan*/  git_index_matched_path_cb ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_4__ {int flags; } ;
typedef  TYPE_1__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int GIT_DIFF_INCLUDE_IGNORED ; 
 int GIT_DIFF_INCLUDE_TYPECHANGE ; 
 int GIT_DIFF_INCLUDE_UNTRACKED ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int GIT_DIFF_RECURSE_UNTRACKED_DIRS ; 
 unsigned int GIT_INDEX_ADD_FORCE ; 
 int INDEX_ACTION_ADDALL ; 
 int INDEX_ACTION_UPDATE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  apply_each_file ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct foreach_diff_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC9(git_index *index, int action, const git_strarray *paths,
				  unsigned int flags,
				  git_index_matched_path_cb cb, void *payload)
{
	int error;
	git_diff *diff;
	git_pathspec ps;
	git_repository *repo;
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	struct foreach_diff_data data = {
		index,
		NULL,
		flags,
		cb,
		payload,
	};

	FUNC1(*index);
	FUNC1(action == INDEX_ACTION_UPDATE || action == INDEX_ACTION_ADDALL);

	repo = FUNC0(index);

	if (!repo) {
		return FUNC2(-1,
			"cannot run update; the index is not backed up by a repository.");
	}

	/*
	 * We do the matching ourselves intead of passing the list to
	 * diff because we want to tell the callback which one
	 * matched, which we do not know if we ask diff to filter for us.
	 */
	if ((error = FUNC8(&ps, paths)) < 0)
		return error;

	opts.flags = GIT_DIFF_INCLUDE_TYPECHANGE;
	if (action == INDEX_ACTION_ADDALL) {
		opts.flags |= GIT_DIFF_INCLUDE_UNTRACKED |
			GIT_DIFF_RECURSE_UNTRACKED_DIRS;

		if (flags == GIT_INDEX_ADD_FORCE)
			opts.flags |= GIT_DIFF_INCLUDE_IGNORED;
	}

	if ((error = FUNC5(&diff, repo, index, &opts)) < 0)
		goto cleanup;

	data.pathspec = &ps;
	error = FUNC3(diff, apply_each_file, NULL, NULL, NULL, &data);
	FUNC4(diff);

	if (error) /* make sure error is set if callback stopped iteration */
		FUNC6(error);

cleanup:
	FUNC7(&ps);
	return error;
}