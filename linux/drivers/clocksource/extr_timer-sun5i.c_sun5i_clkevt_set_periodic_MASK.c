#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  ticks_per_jiffy; } ;
struct sun5i_timer_clkevt {TYPE_1__ timer; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sun5i_timer_clkevt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sun5i_timer_clkevt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sun5i_timer_clkevt*,int /*<<< orphan*/ ) ; 
 struct sun5i_timer_clkevt* FUNC3 (struct clock_event_device*) ; 

__attribute__((used)) static int FUNC4(struct clock_event_device *clkevt)
{
	struct sun5i_timer_clkevt *ce = FUNC3(clkevt);

	FUNC2(ce, 0);
	FUNC0(ce, 0, ce->timer.ticks_per_jiffy);
	FUNC1(ce, 0, true);
	return 0;
}