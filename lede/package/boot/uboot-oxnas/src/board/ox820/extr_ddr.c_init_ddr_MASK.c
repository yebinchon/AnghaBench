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

/* Variables and functions */
 int /*<<< orphan*/  SYS_CTRL_CLK_DDR ; 
 int /*<<< orphan*/  SYS_CTRL_CLK_DDRCK ; 
 int /*<<< orphan*/  SYS_CTRL_CLK_DDRPHY ; 
 int /*<<< orphan*/  SYS_CTRL_RST_DDR ; 
 int /*<<< orphan*/  SYS_CTRL_RST_DDR_PHY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(int mhz)
{
	/* start clocks */
	FUNC1(SYS_CTRL_CLK_DDRPHY);
	FUNC1(SYS_CTRL_CLK_DDR);
	FUNC1(SYS_CTRL_CLK_DDRCK);

	/* bring phy and core out of reset */
	FUNC2(SYS_CTRL_RST_DDR_PHY, 0);
	FUNC2(SYS_CTRL_RST_DDR, 0);

	/* DDR runs at half the speed of the CPU */
	FUNC0(mhz >> 1);
	return;
}