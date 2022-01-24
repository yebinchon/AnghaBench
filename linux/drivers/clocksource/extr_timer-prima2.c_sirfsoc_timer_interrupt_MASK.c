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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ SIRFSOC_TIMER_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ sirfsoc_timer_base ; 
 int /*<<< orphan*/  FUNC3 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct clock_event_device *ce = dev_id;

	FUNC1(!(FUNC2(sirfsoc_timer_base + SIRFSOC_TIMER_STATUS) &
		FUNC0(0)));

	/* clear timer0 interrupt */
	FUNC4(FUNC0(0), sirfsoc_timer_base + SIRFSOC_TIMER_STATUS);

	ce->event_handler(ce);

	return IRQ_HANDLED;
}