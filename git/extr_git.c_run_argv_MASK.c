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
struct string_list_item {int /*<<< orphan*/  string; } ;
struct string_list {int nr; struct string_list_item* items; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct argv_array {int /*<<< orphan*/  argv; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 scalar_t__ ENOENT ; 
 int RUN_CLEAN_ON_EXIT ; 
 int RUN_SILENT_EXEC_FAILURE ; 
 struct strbuf STRBUF_INIT ; 
 struct string_list STRING_LIST_INIT_NODUP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (char const**) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (char const*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int*,char const***) ; 
 int /*<<< orphan*/  FUNC9 (int,char const**) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct string_list*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 struct string_list_item* FUNC17 (struct string_list*,char const*) ; 

__attribute__((used)) static int FUNC18(int *argcp, const char ***argv)
{
	int done_alias = 0;
	struct string_list cmd_list = STRING_LIST_INIT_NODUP;
	struct string_list_item *seen;

	while (1) {
		/*
		 * If we tried alias and futzed with our environment,
		 * it no longer is safe to invoke builtins directly in
		 * general.  We have to spawn them as dashed externals.
		 *
		 * NEEDSWORK: if we can figure out cases
		 * where it is safe to do, we can avoid spawning a new
		 * process.
		 */
		if (!done_alias)
			FUNC9(*argcp, *argv);
		else if (FUNC6(**argv)) {
			struct argv_array args = ARGV_ARRAY_INIT;
			int i;

			/*
			 * The current process is committed to launching a
			 * child process to run the command named in (**argv)
			 * and exiting.  Log a generic string as the trace2
			 * command verb to indicate this.  Note that the child
			 * process will log the actual verb when it runs.
			 */
			FUNC15("_run_git_alias_");

			if (FUNC7())
				FUNC3("%s doesn't support --super-prefix", **argv);

			FUNC2();

			FUNC1(&args, "git");
			for (i = 0; i < *argcp; i++)
				FUNC1(&args, (*argv)[i]);

			FUNC16(args.argv, "trace: exec:");

			/*
			 * if we fail because the command is not found, it is
			 * OK to return. Otherwise, we just pass along the status code.
			 */
			i = FUNC10(args.argv, RUN_SILENT_EXEC_FAILURE |
						  RUN_CLEAN_ON_EXIT, "git_alias");
			if (i >= 0 || errno != ENOENT)
				FUNC5(i);
			FUNC3("could not execute builtin %s", **argv);
		}

		/* .. then try the external ones */
		FUNC4(*argv);

		seen = FUNC17(&cmd_list, *argv[0]);
		if (seen) {
			int i;
			struct strbuf sb = STRBUF_INIT;
			for (i = 0; i < cmd_list.nr; i++) {
				struct string_list_item *item = &cmd_list.items[i];

				FUNC11(&sb, "\n  %s", item->string);
				if (item == seen)
					FUNC12(&sb, " <==");
				else if (i == cmd_list.nr - 1)
					FUNC12(&sb, " ==>");
			}
			FUNC3(FUNC0("alias loop detected: expansion of '%s' does"
			      " not terminate:%s"), cmd_list.items[0].string, sb.buf);
		}

		FUNC13(&cmd_list, *argv[0]);

		/*
		 * It could be an alias -- this works around the insanity
		 * of overriding "git log" with "git show" by having
		 * alias.log = show
		 */
		if (!FUNC8(argcp, argv))
			break;
		done_alias = 1;
	}

	FUNC14(&cmd_list, 0);

	return done_alias;
}