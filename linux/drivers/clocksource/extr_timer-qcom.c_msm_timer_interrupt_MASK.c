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
typedef  int /*<<< orphan*/  u32 ;
struct clock_event_device {int /*<<< orphan*/  (* event_handler ) (struct clock_event_device*) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ TIMER_ENABLE ; 
 int /*<<< orphan*/  TIMER_ENABLE_EN ; 
 scalar_t__ FUNC0 (struct clock_event_device*) ; 
 scalar_t__ event_base ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct clock_event_device *evt = dev_id;
	/* Stop the timer tick */
	if (FUNC0(evt)) {
		u32 ctrl = FUNC1(event_base + TIMER_ENABLE);
		ctrl &= ~TIMER_ENABLE_EN;
		FUNC3(ctrl, event_base + TIMER_ENABLE);
	}
	evt->event_handler(evt);
	return IRQ_HANDLED;
}