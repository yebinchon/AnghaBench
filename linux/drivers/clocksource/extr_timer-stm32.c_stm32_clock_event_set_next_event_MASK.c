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
 int ETIME ; 
 scalar_t__ TIM_CCR1 ; 
 scalar_t__ TIM_CNT ; 
 scalar_t__ TIM_DIER ; 
 unsigned long TIM_DIER_CC1IE ; 
 unsigned long FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct timer_of*) ; 
 struct timer_of* FUNC2 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC4(unsigned long evt,
					    struct clock_event_device *clkevt)
{
	struct timer_of *to = FUNC2(clkevt);
	unsigned long now, next;

	next = FUNC0(FUNC1(to) + TIM_CNT) + evt;
	FUNC3(next, FUNC1(to) + TIM_CCR1);
	now = FUNC0(FUNC1(to) + TIM_CNT);

	if ((next - now) > evt)
		return -ETIME;

	FUNC3(TIM_DIER_CC1IE, FUNC1(to) + TIM_DIER);

	return 0;
}