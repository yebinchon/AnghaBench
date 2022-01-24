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
 int /*<<< orphan*/  OTG_EN_B ; 
 int PAD_CTL_100K_PD ; 
 int PAD_CTL_100K_PU ; 
 int /*<<< orphan*/  USBH2_EN_B ; 
 int USB_PAD_CFG ; 
 int /*<<< orphan*/  USB_RESET_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(void)
{
	FUNC5(MX31_PIN_USBOTG_DATA0, USB_PAD_CFG | PAD_CTL_100K_PD);
	FUNC5(MX31_PIN_USBOTG_DATA1, USB_PAD_CFG | PAD_CTL_100K_PD);
	FUNC5(MX31_PIN_USBOTG_DATA2, USB_PAD_CFG | PAD_CTL_100K_PD);
	FUNC5(MX31_PIN_USBOTG_DATA3, USB_PAD_CFG | PAD_CTL_100K_PD);
	FUNC5(MX31_PIN_USBOTG_DATA4, USB_PAD_CFG | PAD_CTL_100K_PD);
	FUNC5(MX31_PIN_USBOTG_DATA5, USB_PAD_CFG | PAD_CTL_100K_PD);
	FUNC5(MX31_PIN_USBOTG_DATA6, USB_PAD_CFG | PAD_CTL_100K_PD);
	FUNC5(MX31_PIN_USBOTG_DATA7, USB_PAD_CFG | PAD_CTL_100K_PD);
	FUNC5(MX31_PIN_USBOTG_CLK, USB_PAD_CFG | PAD_CTL_100K_PU);
	FUNC5(MX31_PIN_USBOTG_DIR, USB_PAD_CFG | PAD_CTL_100K_PU);
	FUNC5(MX31_PIN_USBOTG_NXT, USB_PAD_CFG | PAD_CTL_100K_PU);
	FUNC5(MX31_PIN_USBOTG_STP, USB_PAD_CFG | PAD_CTL_100K_PU);

	FUNC4(MUX_PGP_UH2, true);
	FUNC5(MX31_PIN_USBH2_CLK, USB_PAD_CFG | PAD_CTL_100K_PU);
	FUNC5(MX31_PIN_USBH2_DIR, USB_PAD_CFG | PAD_CTL_100K_PU);
	FUNC5(MX31_PIN_USBH2_NXT, USB_PAD_CFG | PAD_CTL_100K_PU);
	FUNC5(MX31_PIN_USBH2_STP, USB_PAD_CFG | PAD_CTL_100K_PU);
	FUNC5(MX31_PIN_USBH2_DATA0, USB_PAD_CFG | PAD_CTL_100K_PD);
	FUNC5(MX31_PIN_USBH2_DATA1, USB_PAD_CFG | PAD_CTL_100K_PD);
	FUNC5(MX31_PIN_SRXD6, USB_PAD_CFG | PAD_CTL_100K_PD);
	FUNC5(MX31_PIN_STXD6, USB_PAD_CFG | PAD_CTL_100K_PD);
	FUNC5(MX31_PIN_SFS3, USB_PAD_CFG | PAD_CTL_100K_PD);
	FUNC5(MX31_PIN_SCK3, USB_PAD_CFG | PAD_CTL_100K_PD);
	FUNC5(MX31_PIN_SRXD3, USB_PAD_CFG | PAD_CTL_100K_PD);
	FUNC5(MX31_PIN_STXD3, USB_PAD_CFG | PAD_CTL_100K_PD);

	FUNC1(OTG_EN_B, "usb-udc-en");
	FUNC0(OTG_EN_B, 0);
	FUNC1(USBH2_EN_B, "usbh2-en");
	FUNC0(USBH2_EN_B, 0);

	FUNC1(USB_RESET_B, "usb-reset");
	FUNC0(USB_RESET_B, 0);
	FUNC3(1);
	FUNC2(USB_RESET_B, 1);
	FUNC3(1);
}