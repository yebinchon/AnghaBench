#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  scalar_t__ git_reset_t ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_5__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_MSG ; 
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_INDEX ; 
 int /*<<< orphan*/  GIT_ERROR_OBJECT ; 
 int GIT_EUNMERGED ; 
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 scalar_t__ GIT_REPOSITORY_STATE_MERGE ; 
 scalar_t__ GIT_RESET_HARD ; 
 scalar_t__ GIT_RESET_MIXED ; 
 scalar_t__ GIT_RESET_SOFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/  const*) ; 
 int FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(
	git_repository *repo,
	const git_object *target,
	const char *to,
	git_reset_t reset_type,
	const git_checkout_options *checkout_opts)
{
	git_object *commit = NULL;
	git_index *index = NULL;
	git_tree *tree = NULL;
	int error = 0;
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_buf log_message = GIT_BUF_INIT;

	FUNC0(repo && target);

	if (checkout_opts)
		opts = *checkout_opts;

	if (FUNC13(target) != repo) {
		FUNC6(GIT_ERROR_OBJECT,
			"%s - The given target does not belong to this repository.", ERROR_MSG);
		return -1;
	}

	if (reset_type != GIT_RESET_SOFT &&
		(error = FUNC16(repo,
			reset_type == GIT_RESET_MIXED ? "reset mixed" : "reset hard")) < 0)
		return error;

	if ((error = FUNC14(&commit, target, GIT_OBJECT_COMMIT)) < 0 ||
		(error = FUNC17(&index, repo)) < 0 ||
		(error = FUNC5(&tree, (git_commit *)commit)) < 0)
		goto cleanup;

	if (reset_type == GIT_RESET_SOFT &&
		(FUNC18(repo) == GIT_REPOSITORY_STATE_MERGE ||
		 FUNC8(index)))
	{
		FUNC6(GIT_ERROR_OBJECT, "%s (soft) in the middle of a merge", ERROR_MSG);
		error = GIT_EUNMERGED;
		goto cleanup;
	}

	if ((error = FUNC3(&log_message, "reset: moving to %s", to)) < 0)
		return error;

	if (reset_type == GIT_RESET_HARD) {
		/* overwrite working directory with the new tree */
		opts.checkout_strategy = GIT_CHECKOUT_FORCE;

		if ((error = FUNC4(repo, (git_object *)tree, &opts)) < 0)
			goto cleanup;
	}

	/* move HEAD to the new target */
	if ((error = FUNC15(repo, GIT_HEAD_FILE,
		FUNC12(commit), NULL, FUNC1(&log_message))) < 0)
		goto cleanup;

	if (reset_type > GIT_RESET_SOFT) {
		/* reset index to the target content */

		if ((error = FUNC9(index, tree)) < 0 ||
			(error = FUNC10(index)) < 0)
			goto cleanup;

		if ((error = FUNC19(repo)) < 0) {
			FUNC6(GIT_ERROR_INDEX, "%s - failed to clean up merge data", ERROR_MSG);
			goto cleanup;
		}
	}

cleanup:
	FUNC11(commit);
	FUNC7(index);
	FUNC20(tree);
	FUNC2(&log_message);

	return error;
}