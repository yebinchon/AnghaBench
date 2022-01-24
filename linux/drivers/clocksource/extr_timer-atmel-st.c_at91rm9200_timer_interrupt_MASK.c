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
typedef  int u32 ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* event_handler ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int AT91_ST_ALMS ; 
 int AT91_ST_CRTV ; 
 int AT91_ST_PITS ; 
 int /*<<< orphan*/  AT91_ST_SR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ clkevt ; 
 int irqmask ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int last_crtr ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  regmap_st ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int timer_latch ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	u32 sr;

	FUNC3(regmap_st, AT91_ST_SR, &sr);
	sr &= irqmask;

	/*
	 * irqs should be disabled here, but as the irq is shared they are only
	 * guaranteed to be off if the timer irq is registered first.
	 */
	FUNC0(!FUNC1());

	/* simulate "oneshot" timer with alarm */
	if (sr & AT91_ST_ALMS) {
		clkevt.event_handler(&clkevt);
		return IRQ_HANDLED;
	}

	/* periodic mode should handle delayed ticks */
	if (sr & AT91_ST_PITS) {
		u32	crtr = FUNC2();

		while (((crtr - last_crtr) & AT91_ST_CRTV) >= timer_latch) {
			last_crtr += timer_latch;
			clkevt.event_handler(&clkevt);
		}
		return IRQ_HANDLED;
	}

	/* this irq is shared ... */
	return IRQ_NONE;
}