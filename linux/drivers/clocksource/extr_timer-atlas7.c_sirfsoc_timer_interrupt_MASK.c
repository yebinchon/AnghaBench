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
struct clock_event_device {int /*<<< orphan*/  (* event_handler ) (struct clock_event_device*) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ SIRFSOC_TIMER_INTR_STATUS ; 
 scalar_t__ FUNC1 (struct clock_event_device*) ; 
 scalar_t__ sirfsoc_timer_base ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct clock_event_device *ce = dev_id;
	int cpu = FUNC3();

	/* clear timer interrupt */
	FUNC5(FUNC0(cpu), sirfsoc_timer_base + SIRFSOC_TIMER_INTR_STATUS);

	if (FUNC1(ce))
		FUNC2(cpu);

	ce->event_handler(ce);

	return IRQ_HANDLED;
}