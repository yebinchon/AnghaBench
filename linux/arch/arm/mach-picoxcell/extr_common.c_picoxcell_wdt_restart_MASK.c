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
typedef  enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;

/* Variables and functions */
 int /*<<< orphan*/  WDT_CTRL_REG_EN_MASK ; 
 scalar_t__ WDT_CTRL_REG_OFFS ; 
 scalar_t__ WDT_TIMEOUT_REG_OFFS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ wdt_regs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(enum reboot_mode mode, const char *cmd)
{
	/*
	 * Configure the watchdog to reset with the shortest possible timeout
	 * and give it chance to do the reset.
	 */
	if (wdt_regs) {
		FUNC1(WDT_CTRL_REG_EN_MASK, wdt_regs + WDT_CTRL_REG_OFFS);
		FUNC1(0, wdt_regs + WDT_TIMEOUT_REG_OFFS);
		/* No sleeping, possibly atomic. */
		FUNC0(500);
	}
}