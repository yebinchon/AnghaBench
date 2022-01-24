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
 int /*<<< orphan*/  USBOTG_RST_B ; 
 int /*<<< orphan*/  USB_PAD_CFG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(void)
{
	int err;

	FUNC5(MX31_PIN_USBOTG_DATA0, USB_PAD_CFG);
	FUNC5(MX31_PIN_USBOTG_DATA1, USB_PAD_CFG);
	FUNC5(MX31_PIN_USBOTG_DATA2, USB_PAD_CFG);
	FUNC5(MX31_PIN_USBOTG_DATA3, USB_PAD_CFG);
	FUNC5(MX31_PIN_USBOTG_DATA4, USB_PAD_CFG);
	FUNC5(MX31_PIN_USBOTG_DATA5, USB_PAD_CFG);
	FUNC5(MX31_PIN_USBOTG_DATA6, USB_PAD_CFG);
	FUNC5(MX31_PIN_USBOTG_DATA7, USB_PAD_CFG);
	FUNC5(MX31_PIN_USBOTG_CLK, USB_PAD_CFG);
	FUNC5(MX31_PIN_USBOTG_DIR, USB_PAD_CFG);
	FUNC5(MX31_PIN_USBOTG_NXT, USB_PAD_CFG);
	FUNC5(MX31_PIN_USBOTG_STP, USB_PAD_CFG);

	err = FUNC2(USBOTG_RST_B, "otgusb-reset");
	if (err) {
		FUNC6("Failed to request the USB OTG reset gpio\n");
		return err;
	}

	err = FUNC0(USBOTG_RST_B, 0);
	if (err) {
		FUNC6("Failed to drive the USB OTG reset gpio\n");
		goto usbotg_free_reset;
	}

	FUNC4(1);
	FUNC3(USBOTG_RST_B, 1);
	return 0;

usbotg_free_reset:
	FUNC1(USBOTG_RST_B);
	return err;
}