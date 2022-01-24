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
typedef  int u32 ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ TIMER_CTRL ; 
 int TIMER_CTRL_ENABLE ; 
 int TIMER_CTRL_PERIODIC ; 
 scalar_t__ TIMER_LOAD ; 
 scalar_t__ clkevt_base ; 
 int FUNC0 (scalar_t__) ; 
 int timer_reload ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct clock_event_device *evt)
{
	u32 ctrl = FUNC0(clkevt_base + TIMER_CTRL) & ~TIMER_CTRL_ENABLE;

	/* Disable timer */
	FUNC1(ctrl, clkevt_base + TIMER_CTRL);

	/* Enable the timer and start the periodic tick */
	FUNC1(timer_reload, clkevt_base + TIMER_LOAD);
	ctrl |= TIMER_CTRL_PERIODIC | TIMER_CTRL_ENABLE;
	FUNC1(ctrl, clkevt_base + TIMER_CTRL);
	return 0;
}