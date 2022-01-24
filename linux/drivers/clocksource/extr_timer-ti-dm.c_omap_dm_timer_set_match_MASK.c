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
typedef  unsigned int u32 ;
struct TYPE_2__ {unsigned int tclr; unsigned int tmar; } ;
struct omap_dm_timer {TYPE_1__ context; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int OMAP_TIMER_CTRL_CE ; 
 int /*<<< orphan*/  OMAP_TIMER_CTRL_REG ; 
 int /*<<< orphan*/  OMAP_TIMER_MATCH_REG ; 
 int /*<<< orphan*/  FUNC0 (struct omap_dm_timer*) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_dm_timer*) ; 
 unsigned int FUNC2 (struct omap_dm_timer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_dm_timer*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct omap_dm_timer *timer, int enable,
				   unsigned int match)
{
	u32 l;

	if (FUNC4(!timer))
		return -EINVAL;

	FUNC1(timer);
	l = FUNC2(timer, OMAP_TIMER_CTRL_REG);
	if (enable)
		l |= OMAP_TIMER_CTRL_CE;
	else
		l &= ~OMAP_TIMER_CTRL_CE;
	FUNC3(timer, OMAP_TIMER_MATCH_REG, match);
	FUNC3(timer, OMAP_TIMER_CTRL_REG, l);

	/* Save the context */
	timer->context.tclr = l;
	timer->context.tmar = match;
	FUNC0(timer);
	return 0;
}