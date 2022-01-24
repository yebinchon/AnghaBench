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
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;
struct timer_of {TYPE_1__ clkevt; } ;

/* Variables and functions */
 scalar_t__ TIMER_PCR ; 
 int /*<<< orphan*/  TIMER_PCR_INTR_CLR ; 
 scalar_t__ TIMER_PTV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct timer_of* FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  tegra_to ; 
 scalar_t__ FUNC5 (struct timer_of*) ; 
 int /*<<< orphan*/  FUNC6 (struct timer_of*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(unsigned int cpu)
{
	struct timer_of *to = FUNC4(&tegra_to, cpu);

	FUNC7(0, FUNC5(to) + TIMER_PTV);
	FUNC7(TIMER_PCR_INTR_CLR, FUNC5(to) + TIMER_PCR);

	FUNC3(to->clkevt.irq, FUNC1(cpu));
	FUNC2(to->clkevt.irq);

	/*
	 * Tegra's timer uses n+1 scheme for the counter, i.e. timer will
	 * fire after one tick if 0 is loaded and thus minimum number of
	 * ticks is 1. In result both of the clocksource's tick limits are
	 * higher than a minimum and maximum that hardware register can
	 * take by 1, this is then taken into account by set_next_event
	 * callback.
	 */
	FUNC0(&to->clkevt, FUNC6(to),
					1, /* min */
					0x1fffffff + 1); /* max 29 bits + 1 */

	return 0;
}