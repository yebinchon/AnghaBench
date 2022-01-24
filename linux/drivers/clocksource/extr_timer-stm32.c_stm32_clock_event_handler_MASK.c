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
 scalar_t__ TIM_SR ; 
 scalar_t__ FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct clock_event_device*) ; 
 scalar_t__ FUNC4 (struct timer_of*) ; 
 struct timer_of* FUNC5 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct clock_event_device *clkevt = (struct clock_event_device *)dev_id;
	struct timer_of *to = FUNC5(clkevt);

	FUNC6(0, FUNC4(to) + TIM_SR);

	if (FUNC0(clkevt))
		FUNC1(clkevt);
	else
		FUNC2(clkevt);

	clkevt->event_handler(clkevt);

	return IRQ_HANDLED;
}