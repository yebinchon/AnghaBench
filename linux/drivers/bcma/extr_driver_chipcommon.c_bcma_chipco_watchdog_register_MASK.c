#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wdt ;
struct platform_device {int dummy; } ;
struct bcma_drv_cc {int ticks_per_ms; struct platform_device* watchdog; TYPE_2__* core; } ;
struct TYPE_3__ {scalar_t__ id; int rev; } ;
struct bcma_bus {int /*<<< orphan*/  num; TYPE_1__ chipinfo; } ;
struct bcm47xx_wdt {int max_timer_ms; int /*<<< orphan*/  timer_set_ms; int /*<<< orphan*/  timer_set; struct bcma_drv_cc* driver_data; } ;
struct TYPE_4__ {struct bcma_bus* bus; } ;

/* Variables and functions */
 scalar_t__ BCMA_CHIP_ID_BCM53573 ; 
 scalar_t__ FUNC0 (struct platform_device*) ; 
 int FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct bcma_drv_cc*) ; 
 int /*<<< orphan*/  bcma_chipco_watchdog_timer_set_ms_wdt ; 
 int /*<<< orphan*/  bcma_chipco_watchdog_timer_set_wdt ; 
 struct platform_device* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,struct bcm47xx_wdt*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct bcma_drv_cc *cc)
{
	struct bcma_bus *bus = cc->core->bus;
	struct bcm47xx_wdt wdt = {};
	struct platform_device *pdev;

	if (bus->chipinfo.id == BCMA_CHIP_ID_BCM53573 &&
	    bus->chipinfo.rev <= 1) {
		FUNC4("No watchdog on 53573A0 / 53573A1\n");
		return 0;
	}

	wdt.driver_data = cc;
	wdt.timer_set = bcma_chipco_watchdog_timer_set_wdt;
	wdt.timer_set_ms = bcma_chipco_watchdog_timer_set_ms_wdt;
	wdt.max_timer_ms =
		FUNC2(cc) / cc->ticks_per_ms;

	pdev = FUNC3(NULL, "bcm47xx-wdt",
					     bus->num, &wdt,
					     sizeof(wdt));
	if (FUNC0(pdev))
		return FUNC1(pdev);

	cc->watchdog = pdev;

	return 0;
}