#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct clock_event_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ (* read ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int ETIME ; 
 int MIN_OSCR_DELTA ; 
 scalar_t__ TIMER_AS_VAL ; 
 scalar_t__ TIMER_IER_VAL ; 
 scalar_t__ TIMER_MATCH_VAL ; 
 int TIMER_MATCH_W_ACTIVE ; 
 TYPE_1__ clocksource ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ regbase ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(unsigned long cycles,
				    struct clock_event_device *evt)
{
	int loops = FUNC1(10);
	u64 alarm = clocksource.read(&clocksource) + cycles;
	while ((FUNC2(regbase + TIMER_AS_VAL) & TIMER_MATCH_W_ACTIVE)
						&& --loops)
		FUNC0();
	FUNC5((unsigned long)alarm, regbase + TIMER_MATCH_VAL);

	if ((signed)(alarm - clocksource.read(&clocksource)) <= MIN_OSCR_DELTA)
		return -ETIME;

	FUNC5(1, regbase + TIMER_IER_VAL);

	return 0;
}