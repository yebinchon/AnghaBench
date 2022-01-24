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
struct remote {char const* name; } ;
struct refspec {int raw_nr; char const** raw; } ;
struct child_process {int git_cmd; int no_stdin; int no_stdout; char const* dir; int /*<<< orphan*/  env_array; int /*<<< orphan*/  args; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct child_process*) ; 

__attribute__((used)) static void FUNC4(const char *path, const char *head,
				 const struct remote *remote,
				 const struct refspec *rs)
{
	struct child_process cp = CHILD_PROCESS_INIT;
	int i;

	FUNC0(&cp.args, "submodule--helper");
	FUNC0(&cp.args, "push-check");
	FUNC0(&cp.args, head);
	FUNC0(&cp.args, remote->name);

	for (i = 0; i < rs->raw_nr; i++)
		FUNC0(&cp.args, rs->raw[i]);

	FUNC2(&cp.env_array);
	cp.git_cmd = 1;
	cp.no_stdin = 1;
	cp.no_stdout = 1;
	cp.dir = path;

	/*
	 * Simply indicate if 'submodule--helper push-check' failed.
	 * More detailed error information will be provided by the
	 * child process.
	 */
	if (FUNC3(&cp))
		FUNC1("process for submodule '%s' failed", path);
}