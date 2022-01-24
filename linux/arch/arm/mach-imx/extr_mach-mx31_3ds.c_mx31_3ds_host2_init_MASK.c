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
struct platform_device {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  MX31_PIN_IOIS16 ; 
 int /*<<< orphan*/  MX31_PIN_PC_BVD1 ; 
 int /*<<< orphan*/  MX31_PIN_PC_BVD2 ; 
 int /*<<< orphan*/  MX31_PIN_PC_RST ; 
 int /*<<< orphan*/  MX31_PIN_PC_RW_B ; 
 int /*<<< orphan*/  MX31_PIN_PC_VS2 ; 
 int /*<<< orphan*/  MX31_PIN_USBH2_CLK ; 
 int /*<<< orphan*/  MX31_PIN_USBH2_DATA0 ; 
 int /*<<< orphan*/  MX31_PIN_USBH2_DATA1 ; 
 int /*<<< orphan*/  MX31_PIN_USBH2_DIR ; 
 int /*<<< orphan*/  MX31_PIN_USBH2_NXT ; 
 int /*<<< orphan*/  MX31_PIN_USBH2_STP ; 
 int /*<<< orphan*/  MXC_EHCI_POWER_PINS_ENABLED ; 
 int /*<<< orphan*/  USBH2_RST_B ; 
 int /*<<< orphan*/  USB_PAD_CFG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	int err;

	FUNC6(MX31_PIN_USBH2_CLK, USB_PAD_CFG);
	FUNC6(MX31_PIN_USBH2_DIR, USB_PAD_CFG);
	FUNC6(MX31_PIN_USBH2_NXT, USB_PAD_CFG);
	FUNC6(MX31_PIN_USBH2_STP, USB_PAD_CFG);
	FUNC6(MX31_PIN_USBH2_DATA0, USB_PAD_CFG);
	FUNC6(MX31_PIN_USBH2_DATA1, USB_PAD_CFG);
	FUNC6(MX31_PIN_PC_VS2, USB_PAD_CFG);
	FUNC6(MX31_PIN_PC_BVD1, USB_PAD_CFG);
	FUNC6(MX31_PIN_PC_BVD2, USB_PAD_CFG);
	FUNC6(MX31_PIN_PC_RST, USB_PAD_CFG);
	FUNC6(MX31_PIN_IOIS16, USB_PAD_CFG);
	FUNC6(MX31_PIN_PC_RW_B, USB_PAD_CFG);

	err = FUNC2(USBH2_RST_B, "usbh2-reset");
	if (err) {
		FUNC7("Failed to request the USB Host 2 reset gpio\n");
		return err;
	}

	err = FUNC0(USBH2_RST_B, 0);
	if (err) {
		FUNC7("Failed to drive the USB Host 2 reset gpio\n");
		goto usbotg_free_reset;
	}

	FUNC4(1);
	FUNC3(USBH2_RST_B, 1);

	FUNC4(10);

	return FUNC5(pdev->id, MXC_EHCI_POWER_PINS_ENABLED);

usbotg_free_reset:
	FUNC1(USBH2_RST_B);
	return err;
}