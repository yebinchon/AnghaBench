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
typedef  int u32 ;
struct TYPE_2__ {int tclr; } ;
struct omap_dm_timer {TYPE_1__ context; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OMAP_TIMER_CTRL_REG ; 
 int OMAP_TIMER_CTRL_ST ; 
 int /*<<< orphan*/  FUNC0 (struct omap_dm_timer*) ; 
 int FUNC1 (struct omap_dm_timer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_dm_timer*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct omap_dm_timer *timer)
{
	u32 l;

	if (FUNC3(!timer))
		return -EINVAL;

	FUNC0(timer);

	l = FUNC1(timer, OMAP_TIMER_CTRL_REG);
	if (!(l & OMAP_TIMER_CTRL_ST)) {
		l |= OMAP_TIMER_CTRL_ST;
		FUNC2(timer, OMAP_TIMER_CTRL_REG, l);
	}

	/* Save the context */
	timer->context.tclr = l;
	return 0;
}