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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MISC_CHIP_CONFIG_REG ; 
 int PM_CLK_GATE_REG_OFFSET_USB_HOST ; 
 int PM_PLL_HM_PD_CTRL_REG_OFFSET_PLL_USB ; 
 int PM_SOFT_RST_REG_OFFST_USB_HOST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  usb_pwr_ref ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	/*
	 * EHCI and OHCI share the same clock and power,
	 * resetting twice would cause the 1st controller been reset.
	 * Therefore only do power up  at the first up device, and
	 * power down at the last down device.
	 *
	 * Set USB AHB INCR length to 16
	 */
	if (FUNC2(&usb_pwr_ref) == 1) {
		FUNC4(1 << PM_PLL_HM_PD_CTRL_REG_OFFSET_PLL_USB);
		FUNC3(1 << PM_CLK_GATE_REG_OFFSET_USB_HOST);
		FUNC5(1 << PM_SOFT_RST_REG_OFFST_USB_HOST);
		FUNC1((FUNC0(MISC_CHIP_CONFIG_REG) | (0X2 << 24)),
			MISC_CHIP_CONFIG_REG);
	}

	return 0;
}