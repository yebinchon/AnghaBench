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
struct sun5i_timer_clkevt {int dummy; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ TIMER_SYNC_TICKS ; 
 int /*<<< orphan*/  FUNC0 (struct sun5i_timer_clkevt*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sun5i_timer_clkevt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sun5i_timer_clkevt*,int /*<<< orphan*/ ) ; 
 struct sun5i_timer_clkevt* FUNC3 (struct clock_event_device*) ; 

__attribute__((used)) static int FUNC4(unsigned long evt,
				   struct clock_event_device *clkevt)
{
	struct sun5i_timer_clkevt *ce = FUNC3(clkevt);

	FUNC2(ce, 0);
	FUNC0(ce, 0, evt - TIMER_SYNC_TICKS);
	FUNC1(ce, 0, false);

	return 0;
}