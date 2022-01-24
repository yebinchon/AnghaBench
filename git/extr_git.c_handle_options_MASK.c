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
struct string_list {int nr; TYPE_1__* items; } ;
struct TYPE_2__ {char* string; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIR_ENVIRONMENT ; 
 int /*<<< orphan*/  GIT_GLOB_PATHSPECS_ENVIRONMENT ; 
 int /*<<< orphan*/  GIT_HTML_PATH ; 
 int /*<<< orphan*/  GIT_ICASE_PATHSPECS_ENVIRONMENT ; 
 int /*<<< orphan*/  GIT_IMPLICIT_WORK_TREE_ENVIRONMENT ; 
 int /*<<< orphan*/  GIT_INFO_PATH ; 
 int /*<<< orphan*/  GIT_LITERAL_PATHSPECS_ENVIRONMENT ; 
 int /*<<< orphan*/  GIT_MAN_PATH ; 
 int /*<<< orphan*/  GIT_NAMESPACE_ENVIRONMENT ; 
 int /*<<< orphan*/  GIT_NOGLOB_PATHSPECS_ENVIRONMENT ; 
 int /*<<< orphan*/  GIT_OPTIONAL_LOCKS_ENVIRONMENT ; 
 int /*<<< orphan*/  GIT_SUPER_PREFIX_ENVIRONMENT ; 
 int /*<<< orphan*/  GIT_WORK_TREE_ENVIRONMENT ; 
 int /*<<< orphan*/  NO_PARSEOPT ; 
 int /*<<< orphan*/  NO_REPLACE_OBJECTS_ENVIRONMENT ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  git_usage_string ; 
 int is_bare_repository_cfg ; 
 int /*<<< orphan*/  FUNC9 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ read_replace_refs ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC15 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC16 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int use_pager ; 
 char* FUNC21 () ; 

__attribute__((used)) static int FUNC22(const char ***argv, int *argc, int *envchanged)
{
	const char **orig_argv = *argv;

	while (*argc > 0) {
		const char *cmd = (*argv)[0];
		if (cmd[0] != '-')
			break;

		/*
		 * For legacy reasons, the "version" and "help"
		 * commands can be written with "--" prepended
		 * to make them look like flags.
		 */
		if (!FUNC16(cmd, "--help") || !FUNC16(cmd, "--version"))
			break;

		/*
		 * Check remaining flags.
		 */
		if (FUNC15(cmd, "--exec-path", &cmd)) {
			if (*cmd == '=')
				FUNC8(cmd + 1);
			else {
				FUNC12(FUNC7());
				FUNC19("_query_");
				FUNC3(0);
			}
		} else if (!FUNC16(cmd, "--html-path")) {
			FUNC12(FUNC18(GIT_HTML_PATH));
			FUNC19("_query_");
			FUNC3(0);
		} else if (!FUNC16(cmd, "--man-path")) {
			FUNC12(FUNC18(GIT_MAN_PATH));
			FUNC19("_query_");
			FUNC3(0);
		} else if (!FUNC16(cmd, "--info-path")) {
			FUNC12(FUNC18(GIT_INFO_PATH));
			FUNC19("_query_");
			FUNC3(0);
		} else if (!FUNC16(cmd, "-p") || !FUNC16(cmd, "--paginate")) {
			use_pager = 1;
		} else if (!FUNC16(cmd, "-P") || !FUNC16(cmd, "--no-pager")) {
			use_pager = 0;
			if (envchanged)
				*envchanged = 1;
		} else if (!FUNC16(cmd, "--no-replace-objects")) {
			read_replace_refs = 0;
			FUNC14(NO_REPLACE_OBJECTS_ENVIRONMENT, "1", 1);
			if (envchanged)
				*envchanged = 1;
		} else if (!FUNC16(cmd, "--git-dir")) {
			if (*argc < 2) {
				FUNC4(stderr, "%s", FUNC0("no directory given for --git-dir\n" ));
				FUNC20(git_usage_string);
			}
			FUNC14(GIT_DIR_ENVIRONMENT, (*argv)[1], 1);
			if (envchanged)
				*envchanged = 1;
			(*argv)++;
			(*argc)--;
		} else if (FUNC15(cmd, "--git-dir=", &cmd)) {
			FUNC14(GIT_DIR_ENVIRONMENT, cmd, 1);
			if (envchanged)
				*envchanged = 1;
		} else if (!FUNC16(cmd, "--namespace")) {
			if (*argc < 2) {
				FUNC4(stderr, "%s", FUNC0("no namespace given for --namespace\n" ));
				FUNC20(git_usage_string);
			}
			FUNC14(GIT_NAMESPACE_ENVIRONMENT, (*argv)[1], 1);
			if (envchanged)
				*envchanged = 1;
			(*argv)++;
			(*argc)--;
		} else if (FUNC15(cmd, "--namespace=", &cmd)) {
			FUNC14(GIT_NAMESPACE_ENVIRONMENT, cmd, 1);
			if (envchanged)
				*envchanged = 1;
		} else if (!FUNC16(cmd, "--work-tree")) {
			if (*argc < 2) {
				FUNC4(stderr, "%s", FUNC0("no directory given for --work-tree\n" ));
				FUNC20(git_usage_string);
			}
			FUNC14(GIT_WORK_TREE_ENVIRONMENT, (*argv)[1], 1);
			if (envchanged)
				*envchanged = 1;
			(*argv)++;
			(*argc)--;
		} else if (FUNC15(cmd, "--work-tree=", &cmd)) {
			FUNC14(GIT_WORK_TREE_ENVIRONMENT, cmd, 1);
			if (envchanged)
				*envchanged = 1;
		} else if (!FUNC16(cmd, "--super-prefix")) {
			if (*argc < 2) {
				FUNC4(stderr, "%s", FUNC0("no prefix given for --super-prefix\n" ));
				FUNC20(git_usage_string);
			}
			FUNC14(GIT_SUPER_PREFIX_ENVIRONMENT, (*argv)[1], 1);
			if (envchanged)
				*envchanged = 1;
			(*argv)++;
			(*argc)--;
		} else if (FUNC15(cmd, "--super-prefix=", &cmd)) {
			FUNC14(GIT_SUPER_PREFIX_ENVIRONMENT, cmd, 1);
			if (envchanged)
				*envchanged = 1;
		} else if (!FUNC16(cmd, "--bare")) {
			char *cwd = FUNC21();
			is_bare_repository_cfg = 1;
			FUNC14(GIT_DIR_ENVIRONMENT, cwd, 0);
			FUNC5(cwd);
			FUNC14(GIT_IMPLICIT_WORK_TREE_ENVIRONMENT, "0", 1);
			if (envchanged)
				*envchanged = 1;
		} else if (!FUNC16(cmd, "-c")) {
			if (*argc < 2) {
				FUNC4(stderr, "%s", FUNC0("-c expects a configuration string\n" ));
				FUNC20(git_usage_string);
			}
			FUNC6((*argv)[1]);
			(*argv)++;
			(*argc)--;
		} else if (!FUNC16(cmd, "--literal-pathspecs")) {
			FUNC14(GIT_LITERAL_PATHSPECS_ENVIRONMENT, "1", 1);
			if (envchanged)
				*envchanged = 1;
		} else if (!FUNC16(cmd, "--no-literal-pathspecs")) {
			FUNC14(GIT_LITERAL_PATHSPECS_ENVIRONMENT, "0", 1);
			if (envchanged)
				*envchanged = 1;
		} else if (!FUNC16(cmd, "--glob-pathspecs")) {
			FUNC14(GIT_GLOB_PATHSPECS_ENVIRONMENT, "1", 1);
			if (envchanged)
				*envchanged = 1;
		} else if (!FUNC16(cmd, "--noglob-pathspecs")) {
			FUNC14(GIT_NOGLOB_PATHSPECS_ENVIRONMENT, "1", 1);
			if (envchanged)
				*envchanged = 1;
		} else if (!FUNC16(cmd, "--icase-pathspecs")) {
			FUNC14(GIT_ICASE_PATHSPECS_ENVIRONMENT, "1", 1);
			if (envchanged)
				*envchanged = 1;
		} else if (!FUNC16(cmd, "--no-optional-locks")) {
			FUNC14(GIT_OPTIONAL_LOCKS_ENVIRONMENT, "0", 1);
			if (envchanged)
				*envchanged = 1;
		} else if (!FUNC16(cmd, "--shallow-file")) {
			(*argv)++;
			(*argc)--;
			FUNC13(the_repository, (*argv)[0], 1);
			if (envchanged)
				*envchanged = 1;
		} else if (!FUNC16(cmd, "-C")) {
			if (*argc < 2) {
				FUNC4(stderr, "%s", FUNC0("no directory given for -C\n" ));
				FUNC20(git_usage_string);
			}
			if ((*argv)[1][0]) {
				if (FUNC1((*argv)[1]))
					FUNC2("cannot change to '%s'", (*argv)[1]);
				if (envchanged)
					*envchanged = 1;
			}
			(*argv)++;
			(*argc)--;
		} else if (FUNC15(cmd, "--list-cmds=", &cmd)) {
			FUNC19("_query_");
			if (!FUNC16(cmd, "parseopt")) {
				struct string_list list = STRING_LIST_INIT_DUP;
				int i;

				FUNC9(&list, NO_PARSEOPT);
				for (i = 0; i < list.nr; i++)
					FUNC11("%s ", list.items[i].string);
				FUNC17(&list, 0);
				FUNC3(0);
			} else {
				FUNC3(FUNC10(cmd));
			}
		} else {
			FUNC4(stderr, FUNC0("unknown option: %s\n"), cmd);
			FUNC20(git_usage_string);
		}

		(*argv)++;
		(*argc)--;
	}
	return (*argv) - orig_argv;
}