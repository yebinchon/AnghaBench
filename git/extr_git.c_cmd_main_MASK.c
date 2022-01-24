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

/* Variables and functions */
 scalar_t__ ENOENT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 char* git_more_info_string ; 
 char* git_usage_string ; 
 int /*<<< orphan*/  FUNC6 (int,char const**) ; 
 int /*<<< orphan*/  FUNC7 (char const***,int*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int FUNC11 (int*,char const***) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (char const**) ; 

int FUNC16(int argc, const char **argv)
{
	const char *cmd;
	int done_help = 0;

	cmd = argv[0];
	if (!cmd)
		cmd = "git-help";
	else {
		const char *slash = FUNC4(cmd);
		if (slash)
			cmd = slash + 1;
	}

	FUNC15(argv);

	/*
	 * "git-xxxx" is the same as "git xxxx", but we obviously:
	 *
	 *  - cannot take flags in between the "git" and the "xxxx".
	 *  - cannot execute it externally (since it would just do
	 *    the same thing over again)
	 *
	 * So we just directly call the builtin handler, and die if
	 * that one cannot handle it.
	 */
	if (FUNC13(cmd, "git-", &cmd)) {
		argv[0] = cmd;
		FUNC6(argc, argv);
		FUNC2(FUNC0("cannot handle %s as a builtin"), cmd);
	}

	/* Look for flags.. */
	argv++;
	argc--;
	FUNC7(&argv, &argc, NULL);
	if (argc > 0) {
		/* translate --help and --version into commands */
		FUNC13(argv[0], "--", &argv[0]);
	} else {
		/* The user didn't specify a command; give them help */
		FUNC1();
		FUNC10(FUNC0("usage: %s\n\n"), git_usage_string);
		FUNC9();
		FUNC10("\n%s\n", FUNC0(git_more_info_string));
		FUNC3(1);
	}
	cmd = argv[0];

	/*
	 * We use PATH to find git commands, but we prepend some higher
	 * precedence paths: the "--exec-path" option, the GIT_EXEC_PATH
	 * environment, and the $(gitexecdir) from the Makefile at build
	 * time.
	 */
	FUNC12();

	while (1) {
		int was_alias = FUNC11(&argc, &argv);
		if (errno != ENOENT)
			break;
		if (was_alias) {
			FUNC5(stderr, FUNC0("expansion of alias '%s' failed; "
					  "'%s' is not a git command\n"),
				cmd, argv[0]);
			FUNC3(1);
		}
		if (!done_help) {
			cmd = argv[0] = FUNC8(cmd);
			done_help = 1;
		} else
			break;
	}

	FUNC5(stderr, FUNC0("failed to run command '%s': %s\n"),
		cmd, FUNC14(errno));

	return 1;
}