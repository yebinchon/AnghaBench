#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* event_handler ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  MFGPT_REG_COUNTER ; 
 int /*<<< orphan*/  MFGPT_REG_SETUP ; 
 int MFGPT_SETUP_CMP1 ; 
 int MFGPT_SETUP_CMP2 ; 
 int MFGPT_SETUP_CNTEN ; 
 int MFGPT_SETUP_SETUP ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 TYPE_1__ cs5535_clockevent ; 
 int /*<<< orphan*/  cs5535_event_clock ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	uint16_t val = FUNC3(cs5535_event_clock, MFGPT_REG_SETUP);

	/* See if the interrupt was for us */
	if (!(val & (MFGPT_SETUP_SETUP | MFGPT_SETUP_CMP2 | MFGPT_SETUP_CMP1)))
		return IRQ_NONE;

	/* Turn off the clock (and clear the event) */
	FUNC5(cs5535_event_clock);

	if (FUNC0(&cs5535_clockevent) ||
	    FUNC2(&cs5535_clockevent))
		return IRQ_HANDLED;

	/* Clear the counter */
	FUNC4(cs5535_event_clock, MFGPT_REG_COUNTER, 0);

	/* Restart the clock in periodic mode */

	if (FUNC1(&cs5535_clockevent))
		FUNC4(cs5535_event_clock, MFGPT_REG_SETUP,
				MFGPT_SETUP_CNTEN | MFGPT_SETUP_CMP2);

	cs5535_clockevent.event_handler(&cs5535_clockevent);
	return IRQ_HANDLED;
}