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

/* Variables and functions */
 unsigned int MIPS_CPU_IRQ_BASE ; 
 unsigned int MSC01E_INT_BASE ; 
 unsigned int MSC01E_INT_CPUCTR ; 
 unsigned int cp0_compare_irq ; 
 scalar_t__ cpu_has_veic ; 
 unsigned int FUNC0 () ; 
 unsigned int mips_cpu_timer_irq ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  mips_timer_dispatch ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

unsigned int FUNC3(void)
{
	if (cpu_has_veic) {
		FUNC2(MSC01E_INT_CPUCTR, mips_timer_dispatch);
		mips_cpu_timer_irq = MSC01E_INT_BASE + MSC01E_INT_CPUCTR;
	} else if (FUNC1()) {
		mips_cpu_timer_irq = FUNC0();
	} else {
		mips_cpu_timer_irq = MIPS_CPU_IRQ_BASE + cp0_compare_irq;
	}

	return mips_cpu_timer_irq;
}