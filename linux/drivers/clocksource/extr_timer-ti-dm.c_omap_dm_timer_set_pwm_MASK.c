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
 int OMAP_TIMER_CTRL_GPOCFG ; 
 int OMAP_TIMER_CTRL_PT ; 
 int /*<<< orphan*/  OMAP_TIMER_CTRL_REG ; 
 int OMAP_TIMER_CTRL_SCPWM ; 
 int /*<<< orphan*/  FUNC0 (struct omap_dm_timer*) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_dm_timer*) ; 
 int FUNC2 (struct omap_dm_timer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_dm_timer*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct omap_dm_timer *timer, int def_on,
				 int toggle, int trigger)
{
	u32 l;

	if (FUNC4(!timer))
		return -EINVAL;

	FUNC1(timer);
	l = FUNC2(timer, OMAP_TIMER_CTRL_REG);
	l &= ~(OMAP_TIMER_CTRL_GPOCFG | OMAP_TIMER_CTRL_SCPWM |
	       OMAP_TIMER_CTRL_PT | (0x03 << 10));
	if (def_on)
		l |= OMAP_TIMER_CTRL_SCPWM;
	if (toggle)
		l |= OMAP_TIMER_CTRL_PT;
	l |= trigger << 10;
	FUNC3(timer, OMAP_TIMER_CTRL_REG, l);

	/* Save the context */
	timer->context.tclr = l;
	FUNC0(timer);
	return 0;
}