#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_7__ {int /*<<< orphan*/  perfdata_cb; int /*<<< orphan*/  progress_cb; int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;
typedef  int /*<<< orphan*/  git_annotated_commit ;
struct TYPE_8__ {scalar_t__ perf; scalar_t__ progress; scalar_t__ force; } ;
typedef  TYPE_2__ checkout_options ;
struct TYPE_9__ {char* message; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  print_checkout_progress ; 
 int /*<<< orphan*/  print_perf_data ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC9(git_repository *repo, git_annotated_commit *target, checkout_options *opts)
{
	git_checkout_options checkout_opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_commit *target_commit = NULL;
	int err;

	/** Setup our checkout options from the parsed options */
	checkout_opts.checkout_strategy = GIT_CHECKOUT_SAFE;
	if (opts->force)
		checkout_opts.checkout_strategy = GIT_CHECKOUT_FORCE;

	if (opts->progress)
		checkout_opts.progress_cb = print_checkout_progress;

	if (opts->perf)
		checkout_opts.perfdata_cb = print_perf_data;

	/** Grab the commit we're interested to move to */
	err = FUNC5(&target_commit, repo, FUNC1(target));
	if (err != 0) {
		FUNC0(stderr, "failed to lookup commit: %s\n", FUNC6()->message);
		goto cleanup;
	}

	/**
	 * Perform the checkout so the workdir corresponds to what target_commit
	 * contains.
	 *
	 * Note that it's okay to pass a git_commit here, because it will be
	 * peeled to a tree.
	 */
	err = FUNC3(repo, (const git_object *)target_commit, &checkout_opts);
	if (err != 0) {
		FUNC0(stderr, "failed to checkout tree: %s\n", FUNC6()->message);
		goto cleanup;
	}

	/**
	 * Now that the checkout has completed, we have to update HEAD.
	 *
	 * Depending on the "origin" of target (ie. it's an OID or a branch name),
	 * we might need to detach HEAD.
	 */
	if (FUNC2(target)) {
		err = FUNC7(repo, FUNC2(target));
	} else {
		err = FUNC8(repo, target);
	}
	if (err != 0) {
		FUNC0(stderr, "failed to update HEAD reference: %s\n", FUNC6()->message);
		goto cleanup;
	}

cleanup:
	FUNC4(target_commit);

	return err;
}