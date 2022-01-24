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
typedef  int (* subprocess_start_fn ) (struct subprocess_entry*) ;
struct child_process {int use_shell; int in; int out; int clean_on_exit; char* trace2_child_class; int /*<<< orphan*/  clean_on_exit_handler; int /*<<< orphan*/  args; } ;
struct subprocess_entry {char const* cmd; int /*<<< orphan*/  ent; struct child_process process; } ;
struct hashmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct hashmap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  subprocess_exit_handler ; 
 int /*<<< orphan*/  FUNC7 (struct hashmap*,struct subprocess_entry*) ; 

int FUNC8(struct hashmap *hashmap, struct subprocess_entry *entry, const char *cmd,
	subprocess_start_fn startfn)
{
	int err;
	struct child_process *process;

	entry->cmd = cmd;
	process = &entry->process;

	FUNC1(process);
	FUNC0(&process->args, cmd);
	process->use_shell = 1;
	process->in = -1;
	process->out = -1;
	process->clean_on_exit = 1;
	process->clean_on_exit_handler = subprocess_exit_handler;
	process->trace2_child_class = "subprocess";

	err = FUNC5(process);
	if (err) {
		FUNC2("cannot fork to run subprocess '%s'", cmd);
		return err;
	}

	FUNC4(&entry->ent, FUNC6(cmd));

	err = startfn(entry);
	if (err) {
		FUNC2("initialization for subprocess '%s' failed", cmd);
		FUNC7(hashmap, entry);
		return err;
	}

	FUNC3(hashmap, &entry->ent);
	return 0;
}