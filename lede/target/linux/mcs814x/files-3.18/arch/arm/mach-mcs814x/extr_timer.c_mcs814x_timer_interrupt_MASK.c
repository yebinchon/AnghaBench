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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ TIMER_VAL ; 
 scalar_t__ last_reload ; 
 scalar_t__ mcs814x_timer_base ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ timer_correct ; 
 scalar_t__ timer_reload_value ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	u32 count = FUNC0(mcs814x_timer_base + TIMER_VAL);

	/* take into account delay up to this moment */
	last_reload = count + timer_correct + timer_reload_value;

	if (last_reload < timer_reload_value) {
		last_reload = timer_reload_value;
	} else {
		if (timer_correct == 0)
			timer_correct = FUNC0(mcs814x_timer_base + TIMER_VAL) - count;
	}
	FUNC2(last_reload, mcs814x_timer_base + TIMER_VAL);

	FUNC1();

	return IRQ_HANDLED;
}