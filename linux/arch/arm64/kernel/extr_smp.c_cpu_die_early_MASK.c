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
struct TYPE_2__ {int /*<<< orphan*/  (* cpu_die ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_KILL_ME ; 
 int /*<<< orphan*/  CPU_STUCK_IN_KERNEL ; 
 TYPE_1__** cpu_ops ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	int cpu = FUNC3();

	FUNC1("CPU%d: will not boot\n", cpu);

	/* Mark this CPU absent */
	FUNC2(cpu, 0);

#ifdef CONFIG_HOTPLUG_CPU
	update_cpu_boot_status(CPU_KILL_ME);
	/* Check if we can park ourselves */
	if (cpu_ops[cpu] && cpu_ops[cpu]->cpu_die)
		cpu_ops[cpu]->cpu_die(cpu);
#endif
	FUNC5(CPU_STUCK_IN_KERNEL);

	FUNC0();
}