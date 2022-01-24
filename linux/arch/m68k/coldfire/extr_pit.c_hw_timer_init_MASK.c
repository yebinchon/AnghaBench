#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  irq_handler_t ;
struct TYPE_4__ {int max_delta_ticks; int min_delta_ticks; void* min_delta_ns; void* max_delta_ns; int /*<<< orphan*/  mult; int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FREQ ; 
 int /*<<< orphan*/  MCF_IRQ_PIT1 ; 
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 TYPE_1__ cf_pit_clockevent ; 
 void* FUNC0 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pit_clk ; 
 int /*<<< orphan*/  pit_irq ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(irq_handler_t handler)
{
	cf_pit_clockevent.cpumask = FUNC3(FUNC6());
	cf_pit_clockevent.mult = FUNC4(FREQ, NSEC_PER_SEC, 32);
	cf_pit_clockevent.max_delta_ns =
		FUNC0(0xFFFF, &cf_pit_clockevent);
	cf_pit_clockevent.max_delta_ticks = 0xFFFF;
	cf_pit_clockevent.min_delta_ns =
		FUNC0(0x3f, &cf_pit_clockevent);
	cf_pit_clockevent.min_delta_ticks = 0x3f;
	FUNC1(&cf_pit_clockevent);

	FUNC5(MCF_IRQ_PIT1, &pit_irq);

	FUNC2(&pit_clk, FREQ);
}