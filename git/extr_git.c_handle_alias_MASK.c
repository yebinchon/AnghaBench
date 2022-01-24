#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const** argv; } ;
struct child_process {int use_shell; char* trace2_child_class; TYPE_1__ args; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const**,char const**,int) ; 
 int /*<<< orphan*/  FUNC1 (char const**,char const**,int) ; 
 int /*<<< orphan*/  FUNC2 (char const**,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const**) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char*) ; 
 int FUNC12 (char const***,int*,int*) ; 
 int FUNC13 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC14 (int*) ; 
 int FUNC15 (char*,char const***) ; 
 char* FUNC16 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC17 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC18 (char const*,char const**) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char const**,char*,char const*) ; 

__attribute__((used)) static int FUNC22(int *argcp, const char ***argv)
{
	int envchanged = 0, ret = 0, saved_errno = errno;
	int count, option_count;
	const char **new_argv;
	const char *alias_command;
	char *alias_string;

	alias_command = (*argv)[0];
	alias_string = FUNC4(alias_command);
	if (alias_string) {
		if (*argcp > 1 && !FUNC17((*argv)[1], "-h"))
			FUNC11(stderr, FUNC3("'%s' is aliased to '%s'"),
				   alias_command, alias_string);
		if (alias_string[0] == '!') {
			struct child_process child = CHILD_PROCESS_INIT;
			int nongit_ok;

			/* Aliases expect GIT_PREFIX, GIT_DIR etc to be set */
			FUNC14(&nongit_ok);

			FUNC7();

			child.use_shell = 1;
			child.trace2_child_class = "shell_alias";
			FUNC5(&child.args, alias_string + 1);
			FUNC6(&child.args, (*argv) + 1);

			FUNC18(alias_command, child.args.argv);
			FUNC19();
			FUNC20("_run_shell_alias_");

			ret = FUNC13(&child);
			if (ret >= 0)   /* normal exit */
				FUNC10(ret);

			FUNC9(FUNC3("while expanding alias '%s': '%s'"),
				  alias_command, alias_string + 1);
		}
		count = FUNC15(alias_string, &new_argv);
		if (count < 0)
			FUNC8(FUNC3("bad alias.%s string: %s"), alias_command,
			    FUNC3(FUNC16(count)));
		option_count = FUNC12(&new_argv, &count, &envchanged);
		if (envchanged)
			FUNC8(FUNC3("alias '%s' changes environment variables.\n"
			      "You can use '!git' in the alias to do this"),
			    alias_command);
		FUNC1(new_argv - option_count, new_argv, count);
		new_argv -= option_count;

		if (count < 1)
			FUNC8(FUNC3("empty alias for %s"), alias_command);

		if (!FUNC17(alias_command, new_argv[0]))
			FUNC8(FUNC3("recursive alias: %s"), alias_command);

		FUNC21(new_argv,
				  "trace: alias expansion: %s =>",
				  alias_command);

		FUNC2(new_argv, count + *argcp);
		/* insert after command name */
		FUNC0(new_argv + count, *argv + 1, *argcp);

		FUNC18(alias_command, new_argv);
		FUNC19();

		*argv = new_argv;
		*argcp += count - 1;

		ret = 1;
	}

	errno = saved_errno;

	return ret;
}