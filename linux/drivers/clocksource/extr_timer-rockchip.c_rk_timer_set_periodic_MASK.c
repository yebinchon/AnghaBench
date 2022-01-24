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
struct rk_timer {int freq; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int TIMER_INT_UNMASK ; 
 int TIMER_MODE_FREE_RUNNING ; 
 struct rk_timer* FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rk_timer*) ; 
 int /*<<< orphan*/  FUNC2 (struct rk_timer*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct rk_timer*) ; 

__attribute__((used)) static int FUNC4(struct clock_event_device *ce)
{
	struct rk_timer *timer = FUNC0(ce);

	FUNC1(timer);
	FUNC3(timer->freq / HZ - 1, timer);
	FUNC2(timer, TIMER_MODE_FREE_RUNNING | TIMER_INT_UNMASK);
	return 0;
}