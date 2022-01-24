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
struct omap_dm_timer {int capability; TYPE_1__* pdev; int /*<<< orphan*/  fclk; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int OMAP_TIMER_NEEDS_RESET ; 
 int /*<<< orphan*/  OMAP_TIMER_SRC_32_KHZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_dm_timer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_dm_timer*) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_dm_timer*) ; 
 int FUNC7 (struct omap_dm_timer*) ; 
 int FUNC8 (struct omap_dm_timer*) ; 
 int FUNC9 (struct omap_dm_timer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct omap_dm_timer *timer)
{
	int rc;

	/*
	 * FIXME: OMAP1 devices do not use the clock framework for dmtimers so
	 * do not call clk_get() for these devices.
	 */
	if (!(timer->capability & OMAP_TIMER_NEEDS_RESET)) {
		timer->fclk = FUNC3(&timer->pdev->dev, "fck");
		if (FUNC1(FUNC0(timer->fclk))) {
			FUNC4(&timer->pdev->dev, ": No fclk handle.\n");
			return -EINVAL;
		}
	}

	FUNC6(timer);

	if (timer->capability & OMAP_TIMER_NEEDS_RESET) {
		rc = FUNC8(timer);
		if (rc) {
			FUNC5(timer);
			return rc;
		}
	}

	FUNC2(timer);
	FUNC5(timer);

	rc = FUNC7(timer);
	if (rc == -ENODEV)
		return FUNC9(timer, OMAP_TIMER_SRC_32_KHZ);

	return rc;
}