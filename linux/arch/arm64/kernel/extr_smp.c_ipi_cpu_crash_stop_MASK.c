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
struct pt_regs {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* cpu_die ) (unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__** cpu_ops ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  waiting_for_crash_ipi ; 

__attribute__((used)) static void FUNC6(unsigned int cpu, struct pt_regs *regs)
{
#ifdef CONFIG_KEXEC_CORE
	crash_save_cpu(regs, cpu);

	atomic_dec(&waiting_for_crash_ipi);

	local_irq_disable();
	sdei_mask_local_cpu();

#ifdef CONFIG_HOTPLUG_CPU
	if (cpu_ops[cpu]->cpu_die)
		cpu_ops[cpu]->cpu_die(cpu);
#endif

	/* just in case */
	cpu_park_loop();
#endif
}