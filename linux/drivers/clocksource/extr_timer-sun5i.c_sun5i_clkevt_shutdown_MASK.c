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
 int /*<<< orphan*/  FUNC0 (struct sun5i_timer_clkevt*,int /*<<< orphan*/ ) ; 
 struct sun5i_timer_clkevt* FUNC1 (struct clock_event_device*) ; 

__attribute__((used)) static int FUNC2(struct clock_event_device *clkevt)
{
	struct sun5i_timer_clkevt *ce = FUNC1(clkevt);

	FUNC0(ce, 0);
	return 0;
}