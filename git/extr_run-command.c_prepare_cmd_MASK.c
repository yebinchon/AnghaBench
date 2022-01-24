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
struct child_process {int /*<<< orphan*/ * argv; scalar_t__ use_shell; scalar_t__ git_cmd; } ;
struct argv_array {char** argv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ENOENT ; 
 char* SHELL_PATH ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC2 (struct argv_array*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct argv_array*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct argv_array*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char) ; 

__attribute__((used)) static int FUNC8(struct argv_array *out, const struct child_process *cmd)
{
	if (!cmd->argv[0])
		FUNC0("command is empty");

	/*
	 * Add SHELL_PATH so in the event exec fails with ENOEXEC we can
	 * attempt to interpret the command with 'sh'.
	 */
	FUNC2(out, SHELL_PATH);

	if (cmd->git_cmd) {
		FUNC2(out, "git");
		FUNC3(out, cmd->argv);
	} else if (cmd->use_shell) {
		FUNC6(out, cmd->argv);
	} else {
		FUNC3(out, cmd->argv);
	}

	/*
	 * If there are no '/' characters in the command then perform a path
	 * lookup and use the resolved path as the command to exec.  If there
	 * are '/' characters, we have exec attempt to invoke the command
	 * directly.
	 */
	if (!FUNC7(out->argv[1], '/')) {
		char *program = FUNC5(out->argv[1]);
		if (program) {
			FUNC4((char *)out->argv[1]);
			out->argv[1] = program;
		} else {
			FUNC1(out);
			errno = ENOENT;
			return -1;
		}
	}

	return 0;
}