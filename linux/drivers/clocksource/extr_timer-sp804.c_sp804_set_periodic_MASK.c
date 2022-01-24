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
 unsigned long TIMER_CTRL_32BIT ; 
 unsigned long TIMER_CTRL_ENABLE ; 
 unsigned long TIMER_CTRL_IE ; 
 unsigned long TIMER_CTRL_PERIODIC ; 
 scalar_t__ TIMER_LOAD ; 
 scalar_t__ clkevt_base ; 
 unsigned long clkevt_reload ; 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct clock_event_device *evt)
{
	unsigned long ctrl = TIMER_CTRL_32BIT | TIMER_CTRL_IE |
			     TIMER_CTRL_PERIODIC | TIMER_CTRL_ENABLE;

	FUNC0(evt);
	FUNC1(clkevt_reload, clkevt_base + TIMER_LOAD);
	FUNC1(ctrl, clkevt_base + TIMER_CTRL);
	return 0;
}