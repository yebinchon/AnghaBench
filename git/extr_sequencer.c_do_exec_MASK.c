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
struct repository {int /*<<< orphan*/  index; } ;
struct argv_array {int /*<<< orphan*/  argv; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  RUN_USING_SHELL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC4 (struct argv_array*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (struct repository*) ; 
 int FUNC11 (struct repository*,char*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC12 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*,...) ; 

__attribute__((used)) static int FUNC14(struct repository *r, const char *command_line)
{
	struct argv_array child_env = ARGV_ARRAY_INIT;
	const char *child_argv[] = { NULL, NULL };
	int dirty, status;

	FUNC7(stderr, "Executing: %s\n", command_line);
	child_argv[0] = command_line;
	FUNC4(&child_env, "GIT_DIR=%s", FUNC2(FUNC8()));
	FUNC4(&child_env, "GIT_WORK_TREE=%s",
			 FUNC2(FUNC9()));
	status = FUNC12(child_argv, RUN_USING_SHELL, NULL,
					  child_env.argv);

	/* force re-reading of the cache */
	if (FUNC5(r->index) < 0 || FUNC10(r) < 0)
		return FUNC6(FUNC1("could not read index"));

	dirty = FUNC11(r, "rebase", NULL, 1, 1);

	if (status) {
		FUNC13(FUNC1("execution failed: %s\n%s"
			  "You can fix the problem, and then run\n"
			  "\n"
			  "  git rebase --continue\n"
			  "\n"),
			command_line,
			dirty ? FUNC0("and made changes to the index and/or the "
				"working tree\n") : "");
		if (status == 127)
			/* command not found */
			status = 1;
	} else if (dirty) {
		FUNC13(FUNC1("execution succeeded: %s\nbut "
			  "left changes to the index and/or the working tree\n"
			  "Commit or stash your changes, and then run\n"
			  "\n"
			  "  git rebase --continue\n"
			  "\n"), command_line);
		status = 1;
	}

	FUNC3(&child_env);

	return status;
}