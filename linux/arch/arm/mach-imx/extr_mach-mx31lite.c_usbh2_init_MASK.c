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
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  IOMUX_CONFIG_GPIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUX_PGP_UH2 ; 
 int /*<<< orphan*/  MX31_PIN_DTR_DCE1 ; 
 int /*<<< orphan*/  MX31_PIN_SCK3 ; 
 int /*<<< orphan*/  MX31_PIN_SFS3 ; 
 int /*<<< orphan*/  MX31_PIN_SRXD3 ; 
 int /*<<< orphan*/  MX31_PIN_SRXD6 ; 
 int /*<<< orphan*/  MX31_PIN_STXD3 ; 
 int /*<<< orphan*/  MX31_PIN_STXD6 ; 
 int /*<<< orphan*/  MX31_PIN_USBH2_CLK ; 
 int MX31_PIN_USBH2_CLK__USBH2_CLK ; 
 int /*<<< orphan*/  MX31_PIN_USBH2_DATA0 ; 
 int MX31_PIN_USBH2_DATA0__USBH2_DATA0 ; 
 int /*<<< orphan*/  MX31_PIN_USBH2_DATA1 ; 
 int MX31_PIN_USBH2_DATA1__USBH2_DATA1 ; 
 int /*<<< orphan*/  MX31_PIN_USBH2_DIR ; 
 int MX31_PIN_USBH2_DIR__USBH2_DIR ; 
 int /*<<< orphan*/  MX31_PIN_USBH2_NXT ; 
 int MX31_PIN_USBH2_NXT__USBH2_NXT ; 
 int /*<<< orphan*/  MX31_PIN_USBH2_STP ; 
 int MX31_PIN_USBH2_STP__USBH2_STP ; 
 int /*<<< orphan*/  MXC_EHCI_POWER_PINS_ENABLED ; 
 int /*<<< orphan*/  USB_PAD_CFG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	int pins[] = {
		MX31_PIN_USBH2_DATA0__USBH2_DATA0,
		MX31_PIN_USBH2_DATA1__USBH2_DATA1,
		MX31_PIN_USBH2_CLK__USBH2_CLK,
		MX31_PIN_USBH2_DIR__USBH2_DIR,
		MX31_PIN_USBH2_NXT__USBH2_NXT,
		MX31_PIN_USBH2_STP__USBH2_STP,
	};

	FUNC10(pins, FUNC0(pins), "USB H2");

	FUNC9(MX31_PIN_USBH2_CLK, USB_PAD_CFG);
	FUNC9(MX31_PIN_USBH2_DIR, USB_PAD_CFG);
	FUNC9(MX31_PIN_USBH2_NXT, USB_PAD_CFG);
	FUNC9(MX31_PIN_USBH2_STP, USB_PAD_CFG);
	FUNC9(MX31_PIN_USBH2_DATA0, USB_PAD_CFG);
	FUNC9(MX31_PIN_USBH2_DATA1, USB_PAD_CFG);
	FUNC9(MX31_PIN_SRXD6, USB_PAD_CFG);
	FUNC9(MX31_PIN_STXD6, USB_PAD_CFG);
	FUNC9(MX31_PIN_SFS3, USB_PAD_CFG);
	FUNC9(MX31_PIN_SCK3, USB_PAD_CFG);
	FUNC9(MX31_PIN_SRXD3, USB_PAD_CFG);
	FUNC9(MX31_PIN_STXD3, USB_PAD_CFG);

	FUNC8(MUX_PGP_UH2, true);

	/* chip select */
	FUNC7(FUNC1(MX31_PIN_DTR_DCE1, IOMUX_CONFIG_GPIO),
				"USBH2_CS");
	FUNC4(FUNC2(MX31_PIN_DTR_DCE1), "USBH2 CS");
	FUNC3(FUNC2(MX31_PIN_DTR_DCE1), 0);

	FUNC5(10);

	return FUNC6(pdev->id, MXC_EHCI_POWER_PINS_ENABLED);
}