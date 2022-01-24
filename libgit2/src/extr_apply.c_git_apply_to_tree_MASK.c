#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reader ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_4__ {int /*<<< orphan*/  path; } ;
struct TYPE_5__ {scalar_t__ status; TYPE_1__ old_file; } ;
typedef  TYPE_2__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_apply_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_APPLY_OPTIONS_INIT ; 
 scalar_t__ GIT_DELTA_DELETED ; 
 scalar_t__ GIT_DELTA_RENAMED ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

int FUNC12(
	git_index **out,
	git_repository *repo,
	git_tree *preimage,
	git_diff *diff,
	const git_apply_options *given_opts)
{
	git_index *postimage = NULL;
	git_reader *pre_reader = NULL, *post_reader = NULL;
	git_apply_options opts = GIT_APPLY_OPTIONS_INIT;
	const git_diff_delta *delta;
	size_t i;
	int error = 0;

	FUNC1(out && repo && preimage && diff);

	*out = NULL;

	if (given_opts)
		FUNC11(&opts, given_opts, sizeof(git_apply_options));

	if ((error = FUNC9(&pre_reader, preimage)) < 0)
		goto done;

	/*
	 * put the current tree into the postimage as-is - the diff will
	 * replace any entries contained therein
	 */
	if ((error = FUNC5(&postimage)) < 0 ||
		(error = FUNC6(postimage, preimage)) < 0 ||
		(error = FUNC8(&post_reader, repo, postimage)) < 0)
		goto done;

	/*
	 * Remove the old paths from the index before applying diffs -
	 * we need to do a full pass to remove them before adding deltas,
	 * in order to handle rename situations.
	 */
	for (i = 0; i < FUNC3(diff); i++) {
		delta = FUNC2(diff, i);

		if (delta->status == GIT_DELTA_DELETED ||
			delta->status == GIT_DELTA_RENAMED) {
			if ((error = FUNC7(postimage,
					delta->old_file.path, 0)) < 0)
				goto done;
		}
	}

	if ((error = FUNC0(repo, pre_reader, NULL, post_reader, postimage, diff, &opts)) < 0)
		goto done;

	*out = postimage;

done:
	if (error < 0)
		FUNC4(postimage);

	FUNC10(pre_reader);
	FUNC10(post_reader);

	return error;
}