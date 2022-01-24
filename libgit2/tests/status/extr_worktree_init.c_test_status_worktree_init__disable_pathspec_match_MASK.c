#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int count; char** strings; } ;
struct TYPE_6__ {int flags; TYPE_1__ pathspec; } ;
typedef  TYPE_2__ git_status_options ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 TYPE_2__ GIT_STATUS_OPTIONS_INIT ; 
 int GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH ; 
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ; 
 int /*<<< orphan*/  cb_status__expected_path ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  cleanup_new_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,char*) ; 

void FUNC6(void)
{
	git_repository *repo;
	git_status_options opts = GIT_STATUS_OPTIONS_INIT;
	char *file_with_bracket = "LICENSE[1].md", 
		*imaginary_file_with_bracket = "LICENSE[1-2].md";

	FUNC2(&cleanup_new_repo, "pathspec");
	FUNC1(FUNC4(&repo, "pathspec", 0));
	FUNC0("pathspec/LICENSE[1].md", "screaming bracket\n");
	FUNC0("pathspec/LICENSE1.md", "no bracket\n");

	opts.flags = GIT_STATUS_OPT_INCLUDE_UNTRACKED | 
		GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH;
	opts.pathspec.count = 1;
	opts.pathspec.strings = &file_with_bracket;

	FUNC1(
		FUNC5(repo, &opts, cb_status__expected_path, 
		file_with_bracket)
	);

	/* Test passing a pathspec matching files in the workdir. */
	/* Must not match because pathspecs are disabled. */ 
	opts.pathspec.strings = &imaginary_file_with_bracket;
	FUNC1(
		FUNC5(repo, &opts, cb_status__expected_path, NULL)
	);

	FUNC3(repo);
}