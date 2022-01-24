#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct repository {int dummy; } ;
struct replay_opts {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct repository*) ; 
 char* FUNC6 (struct replay_opts*) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 (struct repository*,struct commit*,struct replay_opts*) ; 
 char* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct commit*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC11(struct repository *r,
			    struct commit *commit,
			    const char *subject, int subject_len,
			    struct replay_opts *opts,
			    int exit_code, int to_amend)
{
	if (commit) {
		if (FUNC8(r, commit, opts))
			return -1;
	} else if (FUNC1(FUNC9(),
			     FUNC5(r), 0666))
		return FUNC2(FUNC0("unable to copy '%s' to '%s'"),
			     FUNC5(r), FUNC9());

	if (to_amend) {
		if (FUNC7())
			return -1;

		FUNC3(stderr,
			FUNC0("You can amend the commit now, with\n"
			  "\n"
			  "  git commit --amend %s\n"
			  "\n"
			  "Once you are satisfied with your changes, run\n"
			  "\n"
			  "  git rebase --continue\n"),
			FUNC6(opts));
	} else if (exit_code) {
		if (commit)
			FUNC4(stderr, FUNC0("Could not apply %s... %.*s"),
				   FUNC10(commit), subject_len, subject);
		else
			/*
			 * We don't have the hash of the parent so
			 * just print the line from the todo file.
			 */
			FUNC4(stderr, FUNC0("Could not merge %.*s"),
				   subject_len, subject);
	}

	return exit_code;
}