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
struct timer_of {int dummy; } ;
struct clock_event_device {int /*<<< orphan*/  (* event_handler ) (struct clock_event_device*) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ RDA_TIMER_IRQ_CLR ; 
 int /*<<< orphan*/  RDA_TIMER_IRQ_CLR_OSTIMER ; 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*) ; 
 scalar_t__ FUNC1 (struct timer_of*) ; 
 struct timer_of* FUNC2 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct clock_event_device *evt = dev_id;
	struct timer_of *to = FUNC2(evt);

	/* clear timer int */
	FUNC3(RDA_TIMER_IRQ_CLR_OSTIMER,
		       FUNC1(to) + RDA_TIMER_IRQ_CLR);

	if (evt->event_handler)
		evt->event_handler(evt);

	return IRQ_HANDLED;
}