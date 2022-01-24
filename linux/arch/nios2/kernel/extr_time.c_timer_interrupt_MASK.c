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
struct nios2_clockevent_dev {int /*<<< orphan*/  timer; } ;
struct clock_event_device {int /*<<< orphan*/  (* event_handler ) (struct clock_event_device*) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ALTERA_TIMER_STATUS_REG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nios2_clockevent_dev* FUNC2 (struct clock_event_device*) ; 

irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct clock_event_device *evt = (struct clock_event_device *) dev_id;
	struct nios2_clockevent_dev *nios2_ced = FUNC2(evt);

	/* Clear the interrupt condition */
	FUNC1(&nios2_ced->timer, 0, ALTERA_TIMER_STATUS_REG);
	evt->event_handler(evt);

	return IRQ_HANDLED;
}