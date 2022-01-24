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
 int PM_CLK_GATE_REG_OFFSET_USB_HOST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  usb_pwr_ref ; 

__attribute__((used)) static void FUNC2(struct platform_device *pdev)
{
	/*
	 * EHCI and OHCI share the same clock and power,
	 * resetting twice would cause the 1st controller been reset.
	 * Therefore only do power up  at the first up device, and
	 * power down at the last down device.
	 */
	if (FUNC0(&usb_pwr_ref) == 0)
		FUNC1(1 << PM_CLK_GATE_REG_OFFSET_USB_HOST);
}