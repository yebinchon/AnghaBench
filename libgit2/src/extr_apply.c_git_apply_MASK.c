#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reader ;
typedef  int /*<<< orphan*/  git_indexwriter ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_10__ {int flags; } ;
typedef  TYPE_1__ git_apply_options ;
typedef  int git_apply_location_t ;

/* Variables and functions */
 int GIT_APPLY_CHECK ; 
#define  GIT_APPLY_LOCATION_BOTH 130 
#define  GIT_APPLY_LOCATION_INDEX 129 
#define  GIT_APPLY_LOCATION_WORKDIR 128 
 TYPE_1__ GIT_APPLY_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_APPLY_OPTIONS_VERSION ; 
 int GIT_EINVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GIT_INDEXWRITER_INIT ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,TYPE_1__ const*,int) ; 

int FUNC15(
	git_repository *repo,
	git_diff *diff,
	git_apply_location_t location,
	const git_apply_options *given_opts)
{
	git_indexwriter indexwriter = GIT_INDEXWRITER_INIT;
	git_index *index = NULL, *preimage = NULL, *postimage = NULL;
	git_reader *pre_reader = NULL, *post_reader = NULL;
	git_apply_options opts = GIT_APPLY_OPTIONS_INIT;
	int error = GIT_EINVALID;

	FUNC2(repo && diff);

	FUNC0(
		given_opts, GIT_APPLY_OPTIONS_VERSION, "git_apply_options");

	if (given_opts)
		FUNC14(&opts, given_opts, sizeof(git_apply_options));

	/*
	 * by default, we apply a patch directly to the working directory;
	 * in `--cached` or `--index` mode, we apply to the contents already
	 * in the index.
	 */
	switch (location) {
	case GIT_APPLY_LOCATION_BOTH:
		error = FUNC11(&pre_reader, repo, true);
		break;
	case GIT_APPLY_LOCATION_INDEX:
		error = FUNC10(&pre_reader, repo, NULL);
		break;
	case GIT_APPLY_LOCATION_WORKDIR:
		error = FUNC11(&pre_reader, repo, false);
		break;
	default:
		FUNC2(false);
	}

	if (error < 0)
		goto done;

	/*
	 * Build the preimage and postimage (differences).  Note that
	 * this is not the complete preimage or postimage, it only
	 * contains the files affected by the patch.  We want to avoid
	 * having the full repo index, so we will limit our checkout
	 * to only write these files that were affected by the diff.
	 */
	if ((error = FUNC6(&preimage)) < 0 ||
	    (error = FUNC6(&postimage)) < 0 ||
	    (error = FUNC10(&post_reader, repo, postimage)) < 0)
		goto done;

	if (!(opts.flags & GIT_APPLY_CHECK))
		if ((error = FUNC13(&index, repo)) < 0 ||
		    (error = FUNC9(&indexwriter, index)) < 0)
			goto done;

	if ((error = FUNC1(repo, pre_reader, preimage, post_reader, postimage, diff, &opts)) < 0)
		goto done;

	if ((opts.flags & GIT_APPLY_CHECK))
		goto done;

	switch (location) {
	case GIT_APPLY_LOCATION_BOTH:
		error = FUNC4(repo, diff, preimage, postimage, location, &opts);
		break;
	case GIT_APPLY_LOCATION_INDEX:
		error = FUNC3(repo, diff, preimage, postimage, &opts);
		break;
	case GIT_APPLY_LOCATION_WORKDIR:
		error = FUNC4(repo, diff, preimage, postimage, location, &opts);
		break;
	default:
		FUNC2(false);
	}

	if (error < 0)
		goto done;

	error = FUNC8(&indexwriter);

done:
	FUNC7(&indexwriter);
	FUNC5(postimage);
	FUNC5(preimage);
	FUNC5(index);
	FUNC12(pre_reader);
	FUNC12(post_reader);

	return error;
}