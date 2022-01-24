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
struct child_process {int /*<<< orphan*/ * argv; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct child_process*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct child_process *cmd)
{
	int ret = FUNC1(cmd->pid, cmd->argv[0], 1);
	FUNC0(cmd, ret);
	return ret;
}