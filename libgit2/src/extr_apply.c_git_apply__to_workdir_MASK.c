#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  length; scalar_t__ contents; } ;
typedef  TYPE_4__ git_vector ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_15__ {scalar_t__ path; } ;
struct TYPE_14__ {scalar_t__ path; } ;
struct TYPE_18__ {TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef  TYPE_5__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_16__ {char** strings; int /*<<< orphan*/  count; } ;
struct TYPE_19__ {int /*<<< orphan*/ * baseline_index; TYPE_3__ paths; int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_6__ git_checkout_options ;
typedef  int /*<<< orphan*/  git_apply_options ;
typedef  scalar_t__ git_apply_location_t ;

/* Variables and functions */
 scalar_t__ GIT_APPLY_LOCATION_WORKDIR ; 
 int /*<<< orphan*/  GIT_CHECKOUT_DISABLE_PATHSPEC_MATCH ; 
 int /*<<< orphan*/  GIT_CHECKOUT_DONT_UPDATE_INDEX ; 
 int /*<<< orphan*/  GIT_CHECKOUT_DONT_WRITE_INDEX ; 
 TYPE_6__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__ GIT_VECTOR_INIT ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_6__*) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int FUNC5 (TYPE_4__*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_4__*,void*) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC8(
	git_repository *repo,
	git_diff *diff,
	git_index *preimage,
	git_index *postimage,
	git_apply_location_t location,
	git_apply_options *opts)
{
	git_vector paths = GIT_VECTOR_INIT;
	git_checkout_options checkout_opts = GIT_CHECKOUT_OPTIONS_INIT;
	const git_diff_delta *delta;
	size_t i;
	int error;

	FUNC0(opts);

	/*
	 * Limit checkout to the paths affected by the diff; this ensures
	 * that other modifications in the working directory are unaffected.
	 */
	if ((error = FUNC5(&paths, FUNC3(diff), NULL)) < 0)
		goto done;

	for (i = 0; i < FUNC3(diff); i++) {
		delta = FUNC2(diff, i);

		if ((error = FUNC6(&paths, (void *)delta->old_file.path)) < 0)
			goto done;

		if (FUNC7(delta->old_file.path, delta->new_file.path) &&
		    (error = FUNC6(&paths, (void *)delta->new_file.path)) < 0)
			goto done;
	}

	checkout_opts.checkout_strategy |= GIT_CHECKOUT_SAFE;
	checkout_opts.checkout_strategy |= GIT_CHECKOUT_DISABLE_PATHSPEC_MATCH;
	checkout_opts.checkout_strategy |= GIT_CHECKOUT_DONT_WRITE_INDEX;

	if (location == GIT_APPLY_LOCATION_WORKDIR)
		checkout_opts.checkout_strategy |= GIT_CHECKOUT_DONT_UPDATE_INDEX;

	checkout_opts.paths.strings = (char **)paths.contents;
	checkout_opts.paths.count = paths.length;

	checkout_opts.baseline_index = preimage;

	error = FUNC1(repo, postimage, &checkout_opts);

done:
	FUNC4(&paths);
	return error;
}