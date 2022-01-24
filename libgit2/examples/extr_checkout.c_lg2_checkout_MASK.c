#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct args_info {size_t pos; size_t argc; char** argv; } ;
typedef  scalar_t__ git_repository_state_t ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_annotated_commit ;
typedef  int /*<<< orphan*/  checkout_options ;
struct TYPE_2__ {char* message; } ;

/* Variables and functions */
 struct args_info ARGS_INFO_INIT ; 
 scalar_t__ GIT_REPOSITORY_STATE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const**,int /*<<< orphan*/ *,struct args_info*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

int FUNC8(git_repository *repo, int argc, char **argv)
{
	struct args_info args = ARGS_INFO_INIT;
	checkout_options opts;
	git_repository_state_t state;
	git_annotated_commit *checkout_target = NULL;
	int err = 0;
	const char *path = ".";

	/** Parse our command line options */
	FUNC4(&path, &opts, &args);

	/** Make sure we're not about to checkout while something else is going on */
	state = FUNC3(repo);
	if (state != GIT_REPOSITORY_STATE_NONE) {
		FUNC0(stderr, "repository is in unexpected state %ld\n", state);
		goto cleanup;
	}

	if (args.pos >= args.argc) {
		FUNC0(stderr, "unhandled\n");
		err = -1;
		goto cleanup;
	} else if (!FUNC7("--", args.argv[args.pos])) {
		/**
		 * Try to checkout the given path
		 */

		FUNC0(stderr, "unhandled path-based checkout\n");
		err = 1;
		goto cleanup;
	} else {
		/**
		 * Try to resolve a "refish" argument to a target libgit2 can use
		 */
		err = FUNC6(&checkout_target, repo, args.argv[args.pos]);
		if (err != 0) {
			FUNC0(stderr, "failed to resolve %s: %s\n", args.argv[args.pos], FUNC2()->message);
			goto cleanup;
		}
		err = FUNC5(repo, checkout_target, &opts);
	}

cleanup:
	FUNC1(checkout_target);

	return err;
}