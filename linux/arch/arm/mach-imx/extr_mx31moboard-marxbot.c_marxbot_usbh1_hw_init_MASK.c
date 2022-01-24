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
 int /*<<< orphan*/  MUX_PGP_USB_SUSPEND ; 
 int /*<<< orphan*/  MX31_PIN_CSPI1_MISO ; 
 int /*<<< orphan*/  MX31_PIN_CSPI1_MOSI ; 
 int /*<<< orphan*/  MX31_PIN_CSPI1_SCLK ; 
 int /*<<< orphan*/  MX31_PIN_CSPI1_SPI_RDY ; 
 int /*<<< orphan*/  MX31_PIN_CSPI1_SS0 ; 
 int /*<<< orphan*/  MX31_PIN_CSPI1_SS1 ; 
 int /*<<< orphan*/  MX31_PIN_CSPI1_SS2 ; 
 int /*<<< orphan*/  MX31_PIN_SFS6 ; 
 int MXC_EHCI_INTERFACE_SINGLE_UNI ; 
 int MXC_EHCI_POWER_PINS_ENABLED ; 
 int /*<<< orphan*/  USB_PAD_CFG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	FUNC2(MUX_PGP_USB_SUSPEND, true);

	FUNC3(MX31_PIN_CSPI1_MISO, USB_PAD_CFG);
	FUNC3(MX31_PIN_CSPI1_MOSI, USB_PAD_CFG);
	FUNC3(MX31_PIN_CSPI1_SS0, USB_PAD_CFG);
	FUNC3(MX31_PIN_CSPI1_SS1, USB_PAD_CFG);
	FUNC3(MX31_PIN_CSPI1_SS2, USB_PAD_CFG);
	FUNC3(MX31_PIN_CSPI1_SCLK, USB_PAD_CFG);
	FUNC3(MX31_PIN_CSPI1_SPI_RDY, USB_PAD_CFG);
	FUNC3(MX31_PIN_SFS6, USB_PAD_CFG);

	FUNC0(10);

	return FUNC1(pdev->id, MXC_EHCI_POWER_PINS_ENABLED |
			MXC_EHCI_INTERFACE_SINGLE_UNI);
}