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
struct watchdog_device {int dummy; } ;
struct mcs814x_wdt {int /*<<< orphan*/  lock; scalar_t__ regs; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 scalar_t__ WDT_COUNT ; 
 scalar_t__ WDT_MAX_VALUE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mcs814x_wdt* FUNC3 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct watchdog_device *dev,
				unsigned int new_timeout)
{
	struct mcs814x_wdt *wdt = FUNC3(dev);

	FUNC1(&wdt->lock);
	/* watchdog counts upward and rollover (0xfffffff -> 0)
	 * triggers the reboot
	 */
	FUNC4(WDT_MAX_VALUE - (new_timeout * FUNC0(wdt->clk)),
		wdt->regs + WDT_COUNT);
	FUNC2(&wdt->lock);

	return 0;
}