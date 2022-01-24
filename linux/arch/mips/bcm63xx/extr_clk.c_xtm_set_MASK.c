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
 int /*<<< orphan*/  BCM63XX_RESET_SAR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CKCTL_6368_SAR_EN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  clk_swpkt_sar ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct clk *clk, int enable)
{
	if (!FUNC0())
		return;

	if (enable)
		FUNC4(&clk_swpkt_sar);
	else
		FUNC3(&clk_swpkt_sar);

	FUNC2(CKCTL_6368_SAR_EN, enable);

	if (enable) {
		/* reset sar core afer clock change */
		FUNC1(BCM63XX_RESET_SAR, 1);
		FUNC5(1);
		FUNC1(BCM63XX_RESET_SAR, 0);
		FUNC5(1);
	}
}