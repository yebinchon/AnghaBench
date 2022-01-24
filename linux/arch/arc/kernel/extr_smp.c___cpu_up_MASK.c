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
struct task_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* cpu_kick ) (unsigned int,unsigned long) ;} ;

/* Variables and functions */
 unsigned long HZ ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned long) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ first_lines_of_secondary ; 
 unsigned long jiffies ; 
 TYPE_1__ plat_smp_ops ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,...) ; 
 struct task_struct* secondary_idle_tsk ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

int FUNC5(unsigned int cpu, struct task_struct *idle)
{
	unsigned long wait_till;

	secondary_idle_tsk = idle;

	FUNC2("Idle Task [%d] %p", cpu, idle);
	FUNC2("Trying to bring up CPU%u ...\n", cpu);

	if (plat_smp_ops.cpu_kick)
		plat_smp_ops.cpu_kick(cpu,
				(unsigned long)first_lines_of_secondary);
	else
		FUNC0(cpu, (unsigned long)NULL);

	/* wait for 1 sec after kicking the secondary */
	wait_till = jiffies + HZ;
	while (FUNC4(jiffies, wait_till)) {
		if (FUNC1(cpu))
			break;
	}

	if (!FUNC1(cpu)) {
		FUNC2("Timeout: CPU%u FAILED to comeup !!!\n", cpu);
		return -1;
	}

	secondary_idle_tsk = NULL;

	return 0;
}