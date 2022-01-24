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
typedef  int /*<<< orphan*/  u32 ;
struct watchdog_device {int dummy; } ;
struct mcs814x_wdt {int /*<<< orphan*/  lock; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ WDT_CTRL ; 
 int /*<<< orphan*/  WDT_CTRL_EN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mcs814x_wdt* FUNC3 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct watchdog_device *dev)
{
	struct mcs814x_wdt *wdt = FUNC3(dev);
	u32 reg;

	FUNC1(&wdt->lock);
	reg = FUNC0(wdt->regs + WDT_CTRL);
	reg |= WDT_CTRL_EN;
	FUNC4(reg, wdt->regs + WDT_CTRL);
	FUNC2(&wdt->lock);

	return 0;
}