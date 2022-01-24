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
struct davinci_clockevent {int dummy; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAVINCI_TIMER_REG_PRD12 ; 
 int /*<<< orphan*/  DAVINCI_TIMER_REG_TIM12 ; 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct davinci_clockevent*,int /*<<< orphan*/ ,unsigned long) ; 
 struct davinci_clockevent* FUNC3 (struct clock_event_device*) ; 

__attribute__((used)) static int
FUNC4(unsigned long cycles,
				      struct clock_event_device *dev)
{
	struct davinci_clockevent *clockevent = FUNC3(dev);

	FUNC1(dev);

	FUNC2(clockevent, DAVINCI_TIMER_REG_TIM12, 0x0);
	FUNC2(clockevent, DAVINCI_TIMER_REG_PRD12, cycles);

	FUNC0(dev);

	return 0;
}