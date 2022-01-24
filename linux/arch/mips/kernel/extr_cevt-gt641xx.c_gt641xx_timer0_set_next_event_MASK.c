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
typedef  unsigned long u32 ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GT_TC0_OFS ; 
 unsigned long GT_TC_CONTROL_ENTC0_MSK ; 
 int /*<<< orphan*/  GT_TC_CONTROL_OFS ; 
 unsigned long GT_TC_CONTROL_SELTC0_MSK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  gt641xx_timer_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(unsigned long delta,
					 struct clock_event_device *evt)
{
	u32 ctrl;

	FUNC2(&gt641xx_timer_lock);

	ctrl = FUNC0(GT_TC_CONTROL_OFS);
	ctrl &= ~(GT_TC_CONTROL_ENTC0_MSK | GT_TC_CONTROL_SELTC0_MSK);
	ctrl |= GT_TC_CONTROL_ENTC0_MSK;

	FUNC1(GT_TC0_OFS, delta);
	FUNC1(GT_TC_CONTROL_OFS, ctrl);

	FUNC3(&gt641xx_timer_lock);

	return 0;
}