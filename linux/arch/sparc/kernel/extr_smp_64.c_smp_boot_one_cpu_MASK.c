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
struct task_struct {int dummy; } ;
struct device_node {int /*<<< orphan*/  phandle; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ callin_flag ; 
 int /*<<< orphan*/ * cpu_new_thread ; 
 scalar_t__ hypervisor ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ ldom_domaining_enabled ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned long,void**) ; 
 struct device_node* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  sparc64_cpu_startup ; 
 int /*<<< orphan*/ * FUNC6 (struct task_struct*) ; 
 scalar_t__ tlb_type ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(unsigned int cpu, struct task_struct *idle)
{
	unsigned long entry =
		(unsigned long)(&sparc64_cpu_startup);
	unsigned long cookie =
		(unsigned long)(&cpu_new_thread);
	void *descr = NULL;
	int timeout, ret;

	callin_flag = 0;
	cpu_new_thread = FUNC6(idle);

	if (tlb_type == hypervisor) {
#if defined(CONFIG_SUN_LDOMS) && defined(CONFIG_HOTPLUG_CPU)
		if (ldom_domaining_enabled)
			ldom_startcpu_cpuid(cpu,
					    (unsigned long) cpu_new_thread,
					    &descr);
		else
#endif
			FUNC5(cpu, entry, cookie);
	} else {
		struct device_node *dp = FUNC2(cpu);

		FUNC4(dp->phandle, entry, cookie);
	}

	for (timeout = 0; timeout < 50000; timeout++) {
		if (callin_flag)
			break;
		FUNC7(100);
	}

	if (callin_flag) {
		ret = 0;
	} else {
		FUNC3("Processor %d is stuck.\n", cpu);
		ret = -ENODEV;
	}
	cpu_new_thread = NULL;

	FUNC0(descr);

	return ret;
}