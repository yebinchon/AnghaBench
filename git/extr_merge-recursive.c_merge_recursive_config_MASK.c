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
struct merge_options {int /*<<< orphan*/  detect_directory_renames; void* detect_renames; int /*<<< orphan*/  rename_limit; int /*<<< orphan*/  verbosity; } ;

/* Variables and functions */
 int /*<<< orphan*/  MERGE_DIRECTORY_RENAMES_CONFLICT ; 
 int /*<<< orphan*/  MERGE_DIRECTORY_RENAMES_NONE ; 
 int /*<<< orphan*/  MERGE_DIRECTORY_RENAMES_TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char**) ; 
 void* FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  git_xmerge_config ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static void FUNC7(struct merge_options *opt)
{
	char *value = NULL;
	FUNC2("merge.verbosity", &opt->verbosity);
	FUNC2("diff.renamelimit", &opt->rename_limit);
	FUNC2("merge.renamelimit", &opt->rename_limit);
	if (!FUNC3("diff.renames", &value)) {
		opt->detect_renames = FUNC4("diff.renames", value);
		FUNC0(value);
	}
	if (!FUNC3("merge.renames", &value)) {
		opt->detect_renames = FUNC4("merge.renames", value);
		FUNC0(value);
	}
	if (!FUNC3("merge.directoryrenames", &value)) {
		int boolval = FUNC5(value);
		if (0 <= boolval) {
			opt->detect_directory_renames = boolval ?
				MERGE_DIRECTORY_RENAMES_TRUE :
				MERGE_DIRECTORY_RENAMES_NONE;
		} else if (!FUNC6(value, "conflict")) {
			opt->detect_directory_renames =
				MERGE_DIRECTORY_RENAMES_CONFLICT;
		} /* avoid erroring on values from future versions of git */
		FUNC0(value);
	}
	FUNC1(git_xmerge_config, NULL);
}