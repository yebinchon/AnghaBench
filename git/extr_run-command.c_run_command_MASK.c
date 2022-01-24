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
struct child_process {scalar_t__ out; scalar_t__ err; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct child_process*) ; 
 int FUNC2 (struct child_process*) ; 

int FUNC3(struct child_process *cmd)
{
	int code;

	if (cmd->out < 0 || cmd->err < 0)
		FUNC0("run_command with a pipe can cause deadlock");

	code = FUNC2(cmd);
	if (code)
		return code;
	return FUNC1(cmd);
}