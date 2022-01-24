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
 scalar_t__ TIMER_CTRL ; 
 unsigned long TIMER_CTRL_ENABLE ; 
 scalar_t__ TIMER_LOAD ; 
 scalar_t__ clkevt_base ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC2(unsigned long next, struct clock_event_device *evt)
{
	unsigned long ctrl = FUNC0(clkevt_base + TIMER_CTRL);

	FUNC1(ctrl & ~TIMER_CTRL_ENABLE, clkevt_base + TIMER_CTRL);
	FUNC1(next, clkevt_base + TIMER_LOAD);
	FUNC1(ctrl | TIMER_CTRL_ENABLE, clkevt_base + TIMER_CTRL);

	return 0;
}