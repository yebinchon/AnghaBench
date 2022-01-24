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
struct option {int dummy; } ;

/* Variables and functions */
 char* GIT_HOST_CPU ; 
 char const* FUNC0 (char*) ; 
 struct option FUNC1 (int /*<<< orphan*/ ,char*,int*,char*) ; 
 struct option FUNC2 () ; 
 char* git_built_from_commit_string ; 
 char* git_version_string ; 
 int FUNC3 (int,char const**,char const*,struct option*,char const* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int FUNC5(int argc, const char **argv, const char *prefix)
{
	int build_options = 0;
	const char * const usage[] = {
		FUNC0("git version [<options>]"),
		NULL
	};
	struct option options[] = {
		FUNC1(0, "build-options", &build_options,
			 "also print build options"),
		FUNC2()
	};

	argc = FUNC3(argc, argv, prefix, options, usage, 0);

	/*
	 * The format of this string should be kept stable for compatibility
	 * with external projects that rely on the output of "git version".
	 *
	 * Always show the version, even if other options are given.
	 */
	FUNC4("git version %s\n", git_version_string);

	if (build_options) {
		FUNC4("cpu: %s\n", GIT_HOST_CPU);
		if (git_built_from_commit_string[0])
			FUNC4("built from commit: %s\n",
			       git_built_from_commit_string);
		else
			FUNC4("no commit associated with this build\n");
		FUNC4("sizeof-long: %d\n", (int)sizeof(long));
		FUNC4("sizeof-size_t: %d\n", (int)sizeof(size_t));
		/* NEEDSWORK: also save and output GIT-BUILD_OPTIONS? */
	}
	return 0;
}