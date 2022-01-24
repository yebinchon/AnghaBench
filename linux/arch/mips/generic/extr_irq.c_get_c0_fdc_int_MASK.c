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
 int MIPS_CPU_IRQ_BASE ; 
 int cp0_fdc_irq ; 
 scalar_t__ cpu_has_veic ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(void)
{
	int mips_cpu_fdc_irq;

	if (FUNC1())
		mips_cpu_fdc_irq = FUNC0();
	else if (cpu_has_veic)
		FUNC2("Unimplemented!");
	else if (cp0_fdc_irq >= 0)
		mips_cpu_fdc_irq = MIPS_CPU_IRQ_BASE + cp0_fdc_irq;
	else
		mips_cpu_fdc_irq = -1;

	return mips_cpu_fdc_irq;
}