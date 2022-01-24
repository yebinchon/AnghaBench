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
struct TYPE_2__ {int tier; int twer; } ;
struct omap_dm_timer {int revision; TYPE_1__ context; int /*<<< orphan*/  irq_dis; int /*<<< orphan*/  irq_ena; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OMAP_TIMER_WAKEUP_EN_REG ; 
 int /*<<< orphan*/  FUNC0 (struct omap_dm_timer*) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_dm_timer*) ; 
 int FUNC2 (struct omap_dm_timer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_dm_timer*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct omap_dm_timer *timer, u32 mask)
{
	u32 l = mask;

	if (FUNC5(!timer))
		return -EINVAL;

	FUNC1(timer);

	if (timer->revision == 1)
		l = FUNC4(timer->irq_ena) & ~mask;

	FUNC6(l, timer->irq_dis);
	l = FUNC2(timer, OMAP_TIMER_WAKEUP_EN_REG) & ~mask;
	FUNC3(timer, OMAP_TIMER_WAKEUP_EN_REG, l);

	/* Save the context */
	timer->context.tier &= ~mask;
	timer->context.twer &= ~mask;
	FUNC0(timer);
	return 0;
}