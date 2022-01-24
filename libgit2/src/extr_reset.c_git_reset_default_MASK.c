#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
struct TYPE_15__ {scalar_t__ count; } ;
typedef  TYPE_3__ git_strarray ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_16__ {char* path; int /*<<< orphan*/  id; int /*<<< orphan*/  mode; } ;
typedef  TYPE_4__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_17__ {int /*<<< orphan*/  flags; TYPE_3__ pathspec; } ;
typedef  TYPE_5__ git_diff_options ;
struct TYPE_14__ {scalar_t__ path; int /*<<< orphan*/  id; int /*<<< orphan*/  mode; } ;
struct TYPE_13__ {int /*<<< orphan*/  path; } ;
struct TYPE_18__ {scalar_t__ status; TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef  TYPE_6__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_MSG ; 
 scalar_t__ GIT_DELTA_ADDED ; 
 scalar_t__ GIT_DELTA_CONFLICTED ; 
 scalar_t__ GIT_DELTA_DELETED ; 
 scalar_t__ GIT_DELTA_MODIFIED ; 
 TYPE_5__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_REVERSE ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_OBJECT ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/  const*) ; 
 int FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 

int FUNC20(
	git_repository *repo,
	const git_object *target,
	const git_strarray* pathspecs)
{
	git_object *commit = NULL;
	git_tree *tree = NULL;
	git_diff *diff = NULL;
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	size_t i, max_i;
	git_index_entry entry;
	int error;
	git_index *index = NULL;

	FUNC0(pathspecs != NULL && pathspecs->count > 0);

	FUNC19(&entry, 0, sizeof(git_index_entry));

	if ((error = FUNC17(&index, repo)) < 0)
		goto cleanup;

	if (target) {
		if (FUNC14(target) != repo) {
			FUNC7(GIT_ERROR_OBJECT,
				"%s_default - The given target does not belong to this repository.", ERROR_MSG);
			return -1;
		}

		if ((error = FUNC15(&commit, target, GIT_OBJECT_COMMIT)) < 0 ||
			(error = FUNC1(&tree, (git_commit *)commit)) < 0)
			goto cleanup;
	}

	opts.pathspec = *pathspecs;
	opts.flags = GIT_DIFF_REVERSE;

	if ((error = FUNC5(
		&diff, repo, tree, index, &opts)) < 0)
			goto cleanup;

	for (i = 0, max_i = FUNC4(diff); i < max_i; ++i) {
		const git_diff_delta *delta = FUNC3(diff, i);

		FUNC0(delta->status == GIT_DELTA_ADDED ||
			delta->status == GIT_DELTA_MODIFIED ||
			delta->status == GIT_DELTA_CONFLICTED ||
			delta->status == GIT_DELTA_DELETED);

		error = FUNC9(index, delta->old_file.path);
		if (error < 0) {
			if (delta->status == GIT_DELTA_ADDED && error == GIT_ENOTFOUND)
				FUNC6();
			else
				goto cleanup;
		}

		if (delta->status == GIT_DELTA_DELETED) {
			if ((error = FUNC11(index, delta->old_file.path, 0)) < 0)
				goto cleanup;
		} else {
			entry.mode = delta->new_file.mode;
			FUNC16(&entry.id, &delta->new_file.id);
			entry.path = (char *)delta->new_file.path;

			if ((error = FUNC8(index, &entry)) < 0)
				goto cleanup;
		}
	}

	error = FUNC12(index);

cleanup:
	FUNC13(commit);
	FUNC18(tree);
	FUNC10(index);
	FUNC2(diff);

	return error;
}