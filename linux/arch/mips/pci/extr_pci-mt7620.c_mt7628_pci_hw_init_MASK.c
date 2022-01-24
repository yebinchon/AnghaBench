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
typedef  int u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RALINK_CLKCFG1 ; 
 int /*<<< orphan*/  RALINK_GPIOMODE ; 
 int /*<<< orphan*/  RALINK_PCIE0_CLK_EN ; 
 int /*<<< orphan*/  RALINK_PCIEPHY_P0_CTL_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rstpcie0 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	u32 val = 0;

	/* bring the core out of reset */
	FUNC7(FUNC0(16), 0, RALINK_GPIOMODE);
	FUNC6(rstpcie0);

	/* enable the pci clk */
	FUNC7(0, RALINK_PCIE0_CLK_EN, RALINK_CLKCFG1);
	FUNC2(100);

	/* voodoo from the SDK driver */
	FUNC5(~0xff, 0x5, RALINK_PCIEPHY_P0_CTL_OFFSET);

	FUNC3(NULL, 0, 0x70c, 4, &val);
	val &= ~(0xff) << 8;
	val |= 0x50 << 8;
	FUNC4(NULL, 0, 0x70c, 4, val);

	FUNC3(NULL, 0, 0x70c, 4, &val);
	FUNC1(&pdev->dev, "Port 0 N_FTS = %x\n", (unsigned int) val);

	return 0;
}