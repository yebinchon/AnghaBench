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
struct TYPE_3__ {int /*<<< orphan*/  argv; } ;
struct child_process {int clean_on_exit; int wait_after_clean; int silent_exec_failure; char* trace2_child_class; TYPE_1__ args; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const**) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int FUNC9 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int use_pager ; 

__attribute__((used)) static void FUNC12(const char **argv)
{
	struct child_process cmd = CHILD_PROCESS_INIT;
	int status;

	if (FUNC7())
		FUNC5(FUNC0("%s doesn't support --super-prefix"), argv[0]);

	if (use_pager == -1 && !FUNC8(argv[0]))
		use_pager = FUNC3(argv[0]);
	FUNC4();

	FUNC1(&cmd.args, "git-%s", argv[0]);
	FUNC2(&cmd.args, argv + 1);
	cmd.clean_on_exit = 1;
	cmd.wait_after_clean = 1;
	cmd.silent_exec_failure = 1;
	cmd.trace2_child_class = "dashed";

	FUNC10("_run_dashed_");

	/*
	 * The code in run_command() logs trace2 child_start/child_exit
	 * events, so we do not need to report exec/exec_result events here.
	 */
	FUNC11(cmd.args.argv, "trace: exec:");

	/*
	 * If we fail because the command is not found, it is
	 * OK to return. Otherwise, we just pass along the status code,
	 * or our usual generic code if we were not even able to exec
	 * the program.
	 */
	status = FUNC9(&cmd);

	/*
	 * If the child process ran and we are now going to exit, emit a
	 * generic string as our trace2 command verb to indicate that we
	 * launched a dashed command.
	 */
	if (status >= 0)
		FUNC6(status);
	else if (errno != ENOENT)
		FUNC6(128);
}