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
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 unsigned long SYST_CON_EN ; 
 unsigned long SYST_CON_IRQ_EN ; 
 int /*<<< orphan*/  FUNC0 (struct timer_of*) ; 
 int /*<<< orphan*/  FUNC1 (struct timer_of*) ; 
 struct timer_of* FUNC2 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(unsigned long ticks,
				      struct clock_event_device *clkevt)
{
	struct timer_of *to = FUNC2(clkevt);

	/* Enable clock to allow timeout tick update later */
	FUNC3(SYST_CON_EN, FUNC0(to));

	/*
	 * Write new timeout ticks. Timer shall start countdown
	 * after timeout ticks are updated.
	 */
	FUNC3(ticks, FUNC1(to));

	/* Enable interrupt */
	FUNC3(SYST_CON_EN | SYST_CON_IRQ_EN, FUNC0(to));

	return 0;
}