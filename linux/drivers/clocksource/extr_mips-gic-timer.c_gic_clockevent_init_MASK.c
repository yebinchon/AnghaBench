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
 int /*<<< orphan*/  CPUHP_AP_MIPS_GIC_TIMER_STARTING ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gic_compare_irqaction ; 
 int /*<<< orphan*/  gic_dying_cpu ; 
 int /*<<< orphan*/  gic_frequency ; 
 int /*<<< orphan*/  gic_starting_cpu ; 
 int /*<<< orphan*/  gic_timer_irq ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void)
{
	int ret;

	if (!gic_frequency)
		return -ENXIO;

	ret = FUNC2(gic_timer_irq, &gic_compare_irqaction);
	if (ret < 0) {
		FUNC1("IRQ %d setup failed (%d)\n", gic_timer_irq, ret);
		return ret;
	}

	FUNC0(CPUHP_AP_MIPS_GIC_TIMER_STARTING,
			  "clockevents/mips/gic/timer:starting",
			  gic_starting_cpu, gic_dying_cpu);
	return 0;
}