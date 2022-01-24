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
 int /*<<< orphan*/  MUX_PGP_UH2 ; 
 int /*<<< orphan*/  MX31_PIN_SCK3 ; 
 int /*<<< orphan*/  MX31_PIN_SFS3 ; 
 int /*<<< orphan*/  MX31_PIN_SRXD3 ; 
 int /*<<< orphan*/  MX31_PIN_SRXD6 ; 
 int /*<<< orphan*/  MX31_PIN_STXD3 ; 
 int /*<<< orphan*/  MX31_PIN_STXD6 ; 
 int /*<<< orphan*/  MX31_PIN_USBH2_CLK ; 
 int /*<<< orphan*/  MX31_PIN_USBH2_DATA0 ; 
 int /*<<< orphan*/  MX31_PIN_USBH2_DATA1 ; 
 int /*<<< orphan*/  MX31_PIN_USBH2_DIR ; 
 int /*<<< orphan*/  MX31_PIN_USBH2_NXT ; 
 int /*<<< orphan*/  MX31_PIN_USBH2_STP ; 
 int MXC_EHCI_INTERFACE_DIFF_UNI ; 
 int MXC_EHCI_POWER_PINS_ENABLED ; 
 int /*<<< orphan*/  USBH2_CS ; 
 int /*<<< orphan*/  USBH2_RESET ; 
 int /*<<< orphan*/  USB_PAD_CFG ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	int err;

	FUNC7(MX31_PIN_USBH2_CLK, USB_PAD_CFG);
	FUNC7(MX31_PIN_USBH2_DIR, USB_PAD_CFG);
	FUNC7(MX31_PIN_USBH2_NXT, USB_PAD_CFG);
	FUNC7(MX31_PIN_USBH2_STP, USB_PAD_CFG);
	FUNC7(MX31_PIN_USBH2_DATA0, USB_PAD_CFG);
	FUNC7(MX31_PIN_USBH2_DATA1, USB_PAD_CFG);
	FUNC7(MX31_PIN_SRXD6, USB_PAD_CFG);
	FUNC7(MX31_PIN_STXD6, USB_PAD_CFG);
	FUNC7(MX31_PIN_SFS3, USB_PAD_CFG);
	FUNC7(MX31_PIN_SCK3, USB_PAD_CFG);
	FUNC7(MX31_PIN_SRXD3, USB_PAD_CFG);
	FUNC7(MX31_PIN_STXD3, USB_PAD_CFG);

	FUNC6(MUX_PGP_UH2, true);


	/* Enable the chip */
	err = FUNC2(USBH2_CS, "USB-H2-CS");
	if (err) {
		FUNC8("Failed to request the usb host 2 CS gpio\n");
		return err;
	}

	err = FUNC0(USBH2_CS, 0/*Enabled*/);
	if (err) {
		FUNC8("Failed to drive the usb host 2 CS gpio\n");
		goto h2_free_cs;
	}

	/* H2 phy reset*/
	err = FUNC2(USBH2_RESET, "USB-H2-RESET");
	if (err) {
		FUNC8("Failed to request the usb host 2 reset gpio\n");
		goto h2_free_cs;
	}

	err = FUNC0(USBH2_RESET, 1/*HIGH*/);
	if (err) {
		FUNC8("Failed to reset the usb host 2 phy\n");
		goto h2_free_reset;
	}

	FUNC3(USBH2_RESET, 0/*LOW*/);
	FUNC4(5);
	FUNC3(USBH2_RESET, 1/*HIGH*/);
	FUNC4(10);

	return FUNC5(pdev->id, MXC_EHCI_POWER_PINS_ENABLED |
			MXC_EHCI_INTERFACE_DIFF_UNI);

h2_free_reset:
	FUNC1(USBH2_RESET);
h2_free_cs:
	FUNC1(USBH2_CS);
	return err;
}