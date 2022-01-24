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
 int /*<<< orphan*/  MUX_PGP_USB_SUSPEND ; 
 int /*<<< orphan*/  MX31_PIN_CSPI1_MISO ; 
 int MX31_PIN_CSPI1_MISO__USBH1_RXDP ; 
 int /*<<< orphan*/  MX31_PIN_CSPI1_MOSI ; 
 int MX31_PIN_CSPI1_MOSI__USBH1_RXDM ; 
 int /*<<< orphan*/  MX31_PIN_CSPI1_SCLK ; 
 int MX31_PIN_CSPI1_SCLK__USBH1_OEB ; 
 int /*<<< orphan*/  MX31_PIN_CSPI1_SPI_RDY ; 
 int MX31_PIN_CSPI1_SPI_RDY__USBH1_FS ; 
 int /*<<< orphan*/  MX31_PIN_CSPI1_SS0 ; 
 int MX31_PIN_CSPI1_SS0__USBH1_TXDM ; 
 int /*<<< orphan*/  MX31_PIN_CSPI1_SS1 ; 
 int MX31_PIN_CSPI1_SS1__USBH1_TXDP ; 
 int /*<<< orphan*/  MX31_PIN_CSPI1_SS2 ; 
 int MX31_PIN_CSPI1_SS2__USBH1_RCV ; 
 int MXC_EHCI_INTERFACE_SINGLE_UNI ; 
 int MXC_EHCI_POWER_PINS_ENABLED ; 
 int /*<<< orphan*/  USB_PAD_CFG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	int pins[] = {
		MX31_PIN_CSPI1_MOSI__USBH1_RXDM,
		MX31_PIN_CSPI1_MISO__USBH1_RXDP,
		MX31_PIN_CSPI1_SS0__USBH1_TXDM,
		MX31_PIN_CSPI1_SS1__USBH1_TXDP,
		MX31_PIN_CSPI1_SS2__USBH1_RCV,
		MX31_PIN_CSPI1_SCLK__USBH1_OEB,
		MX31_PIN_CSPI1_SPI_RDY__USBH1_FS,
	};

	FUNC5(pins, FUNC0(pins), "USB H1");

	FUNC4(MX31_PIN_CSPI1_MOSI, USB_PAD_CFG);
	FUNC4(MX31_PIN_CSPI1_MISO, USB_PAD_CFG);
	FUNC4(MX31_PIN_CSPI1_SS0, USB_PAD_CFG);
	FUNC4(MX31_PIN_CSPI1_SS1, USB_PAD_CFG);
	FUNC4(MX31_PIN_CSPI1_SS2, USB_PAD_CFG);
	FUNC4(MX31_PIN_CSPI1_SCLK, USB_PAD_CFG);
	FUNC4(MX31_PIN_CSPI1_SPI_RDY, USB_PAD_CFG);

	FUNC3(MUX_PGP_USB_SUSPEND, true);

	FUNC1(10);

	return FUNC2(pdev->id, MXC_EHCI_POWER_PINS_ENABLED |
			MXC_EHCI_INTERFACE_SINGLE_UNI);
}