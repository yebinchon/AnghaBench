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
struct TYPE_2__ {int /*<<< orphan*/  tclr; } ;
struct omap_dm_timer {int capability; TYPE_1__ context; int /*<<< orphan*/  posted; int /*<<< orphan*/  fclk; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OMAP_TIMER_CTRL_REG ; 
 int OMAP_TIMER_NEEDS_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct omap_dm_timer*,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_dm_timer*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_dm_timer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct omap_dm_timer *timer)
{
	unsigned long rate = 0;

	if (FUNC4(!timer))
		return -EINVAL;

	if (!(timer->capability & OMAP_TIMER_NEEDS_RESET))
		rate = FUNC1(timer->fclk);

	FUNC0(timer, timer->posted, rate);

	/*
	 * Since the register values are computed and written within
	 * __omap_dm_timer_stop, we need to use read to retrieve the
	 * context.
	 */
	timer->context.tclr =
			FUNC3(timer, OMAP_TIMER_CTRL_REG);
	FUNC2(timer);
	return 0;
}