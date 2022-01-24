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
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM63XX_RESET_ENETSW ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  CKCTL_6328_ROBOSW_EN ; 
 int /*<<< orphan*/  CKCTL_6362_ROBOSW_EN ; 
 int /*<<< orphan*/  CKCTL_6368_ROBOSW_EN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  clk_swpkt_sar ; 
 int /*<<< orphan*/  clk_swpkt_usb ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct clk *clk, int enable)
{
	if (FUNC0()) {
		FUNC4(CKCTL_6328_ROBOSW_EN, enable);
	} else if (FUNC1()) {
		FUNC4(CKCTL_6362_ROBOSW_EN, enable);
	} else if (FUNC2()) {
		if (enable) {
			FUNC6(&clk_swpkt_sar);
			FUNC6(&clk_swpkt_usb);
		} else {
			FUNC5(&clk_swpkt_usb);
			FUNC5(&clk_swpkt_sar);
		}
		FUNC4(CKCTL_6368_ROBOSW_EN, enable);
	} else {
		return;
	}

	if (enable) {
		/* reset switch core afer clock change */
		FUNC3(BCM63XX_RESET_ENETSW, 1);
		FUNC7(10);
		FUNC3(BCM63XX_RESET_ENETSW, 0);
		FUNC7(10);
	}
}