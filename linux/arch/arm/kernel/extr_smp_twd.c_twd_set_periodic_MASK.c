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
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HZ ; 
 scalar_t__ TWD_TIMER_CONTROL ; 
 unsigned long TWD_TIMER_CONTROL_ENABLE ; 
 unsigned long TWD_TIMER_CONTROL_IT_ENABLE ; 
 unsigned long TWD_TIMER_CONTROL_PERIODIC ; 
 scalar_t__ TWD_TIMER_LOAD ; 
 scalar_t__ twd_base ; 
 int /*<<< orphan*/  twd_timer_rate ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct clock_event_device *clk)
{
	unsigned long ctrl = TWD_TIMER_CONTROL_ENABLE |
			     TWD_TIMER_CONTROL_IT_ENABLE |
			     TWD_TIMER_CONTROL_PERIODIC;

	FUNC1(FUNC0(twd_timer_rate, HZ),
		       twd_base + TWD_TIMER_LOAD);
	FUNC1(ctrl, twd_base + TWD_TIMER_CONTROL);
	return 0;
}