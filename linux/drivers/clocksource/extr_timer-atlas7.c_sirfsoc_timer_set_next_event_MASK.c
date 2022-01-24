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
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ SIRFSOC_TIMER_COUNTER_0 ; 
 scalar_t__ SIRFSOC_TIMER_MATCH_0 ; 
 scalar_t__ sirfsoc_timer_base ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC4(unsigned long delta,
	struct clock_event_device *ce)
{
	int cpu = FUNC2();

	/* disable timer first, then modify the related registers */
	FUNC0(cpu);

	FUNC3(0, sirfsoc_timer_base + SIRFSOC_TIMER_COUNTER_0 +
		4 * cpu);
	FUNC3(delta, sirfsoc_timer_base + SIRFSOC_TIMER_MATCH_0 +
		4 * cpu);

	/* enable the tick */
	FUNC1(cpu);

	return 0;
}