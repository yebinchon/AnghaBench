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
struct clock_event_device {int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARC_TIMERN_MAX ; 
 int /*<<< orphan*/  arc_clockevent_device ; 
 int /*<<< orphan*/  arc_timer_freq ; 
 int /*<<< orphan*/  arc_timer_irq ; 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct clock_event_device* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(unsigned int cpu)
{
	struct clock_event_device *evt = FUNC4(&arc_clockevent_device);

	evt->cpumask = FUNC1(FUNC3());

	FUNC0(evt, arc_timer_freq, 0, ARC_TIMERN_MAX);
	FUNC2(arc_timer_irq, 0);
	return 0;
}