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
 int /*<<< orphan*/  MX31_PIN_USBOTG_CLK ; 
 int /*<<< orphan*/  MX31_PIN_USBOTG_DATA0 ; 
 int /*<<< orphan*/  MX31_PIN_USBOTG_DATA1 ; 
 int /*<<< orphan*/  MX31_PIN_USBOTG_DATA2 ; 
 int /*<<< orphan*/  MX31_PIN_USBOTG_DATA3 ; 
 int /*<<< orphan*/  MX31_PIN_USBOTG_DATA4 ; 
 int /*<<< orphan*/  MX31_PIN_USBOTG_DATA5 ; 
 int /*<<< orphan*/  MX31_PIN_USBOTG_DATA6 ; 
 int /*<<< orphan*/  MX31_PIN_USBOTG_DATA7 ; 
 int /*<<< orphan*/  MX31_PIN_USBOTG_DIR ; 
 int /*<<< orphan*/  MX31_PIN_USBOTG_NXT ; 
 int /*<<< orphan*/  MX31_PIN_USBOTG_STP ; 
 int MXC_EHCI_INTERFACE_DIFF_UNI ; 
 int MXC_EHCI_POWER_PINS_ENABLED ; 
 int /*<<< orphan*/  OTG_RESET ; 
 int /*<<< orphan*/  USB_PAD_CFG ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	int err;

	FUNC6(MX31_PIN_USBOTG_DATA0, USB_PAD_CFG);
	FUNC6(MX31_PIN_USBOTG_DATA1, USB_PAD_CFG);
	FUNC6(MX31_PIN_USBOTG_DATA2, USB_PAD_CFG);
	FUNC6(MX31_PIN_USBOTG_DATA3, USB_PAD_CFG);
	FUNC6(MX31_PIN_USBOTG_DATA4, USB_PAD_CFG);
	FUNC6(MX31_PIN_USBOTG_DATA5, USB_PAD_CFG);
	FUNC6(MX31_PIN_USBOTG_DATA6, USB_PAD_CFG);
	FUNC6(MX31_PIN_USBOTG_DATA7, USB_PAD_CFG);
	FUNC6(MX31_PIN_USBOTG_CLK, USB_PAD_CFG);
	FUNC6(MX31_PIN_USBOTG_DIR, USB_PAD_CFG);
	FUNC6(MX31_PIN_USBOTG_NXT, USB_PAD_CFG);
	FUNC6(MX31_PIN_USBOTG_STP, USB_PAD_CFG);

	/* Chip already enabled by hardware */
	/* OTG phy reset*/
	err = FUNC2(OTG_RESET, "USB-OTG-RESET");
	if (err) {
		FUNC7("Failed to request the usb otg reset gpio\n");
		return err;
	}

	err = FUNC0(OTG_RESET, 1/*HIGH*/);
	if (err) {
		FUNC7("Failed to reset the usb otg phy\n");
		goto otg_free_reset;
	}

	FUNC3(OTG_RESET, 0/*LOW*/);
	FUNC4(5);
	FUNC3(OTG_RESET, 1/*HIGH*/);
	FUNC4(10);

	return FUNC5(pdev->id, MXC_EHCI_POWER_PINS_ENABLED |
			MXC_EHCI_INTERFACE_DIFF_UNI);

otg_free_reset:
	FUNC1(OTG_RESET);
	return err;
}