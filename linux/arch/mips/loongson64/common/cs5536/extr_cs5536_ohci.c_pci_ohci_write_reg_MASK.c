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
typedef  int u32 ;

/* Variables and functions */
 int CS5536_USB_INTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLCP_SOFT_COM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLIU_P2D_BM3 ; 
#define  PCI_BAR0_REG 131 
 int PCI_BAR_RANGE_MASK ; 
#define  PCI_COMMAND 130 
 int PCI_COMMAND_MASTER ; 
 int PCI_COMMAND_MEMORY ; 
#define  PCI_OHCI_INT_REG 129 
#define  PCI_STATUS 128 
 int PCI_STATUS_PARITY ; 
 int /*<<< orphan*/  PIC_YSEL_LOW ; 
 int PIC_YSEL_LOW_USB_SHIFT ; 
 int /*<<< orphan*/  SB_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int SB_PARE_ERR_FLAG ; 
 int SOFT_BAR_OHCI_FLAG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_OHCI ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 

void FUNC7(int reg, u32 value)
{
	u32 hi = 0, lo = value;

	switch (reg) {
	case PCI_COMMAND:
		FUNC5(FUNC4(USB_OHCI), &hi, &lo);
		if (value & PCI_COMMAND_MASTER)
			hi |= PCI_COMMAND_MASTER;
		else
			hi &= ~PCI_COMMAND_MASTER;

		if (value & PCI_COMMAND_MEMORY)
			hi |= PCI_COMMAND_MEMORY;
		else
			hi &= ~PCI_COMMAND_MEMORY;
		FUNC6(FUNC4(USB_OHCI), hi, lo);
		break;
	case PCI_STATUS:
		if (value & PCI_STATUS_PARITY) {
			FUNC5(FUNC3(SB_ERROR), &hi, &lo);
			if (lo & SB_PARE_ERR_FLAG) {
				lo = (lo & 0x0000ffff) | SB_PARE_ERR_FLAG;
				FUNC6(FUNC3(SB_ERROR), hi, lo);
			}
		}
		break;
	case PCI_BAR0_REG:
		if (value == PCI_BAR_RANGE_MASK) {
			FUNC5(FUNC1(GLCP_SOFT_COM), &hi, &lo);
			lo |= SOFT_BAR_OHCI_FLAG;
			FUNC6(FUNC1(GLCP_SOFT_COM), hi, lo);
		} else if ((value & 0x01) == 0x00) {
			FUNC5(FUNC4(USB_OHCI), &hi, &lo);
			lo = value;
			FUNC6(FUNC4(USB_OHCI), hi, lo);

			value &= 0xfffffff0;
			hi = 0x40000000 | ((value & 0xff000000) >> 24);
			lo = 0x000fffff | ((value & 0x00fff000) << 8);
			FUNC6(FUNC2(GLIU_P2D_BM3), hi, lo);
		}
		break;
	case PCI_OHCI_INT_REG:
		FUNC5(FUNC0(PIC_YSEL_LOW), &hi, &lo);
		lo &= ~(0xf << PIC_YSEL_LOW_USB_SHIFT);
		if (value)	/* enable all the usb interrupt in PIC */
			lo |= (CS5536_USB_INTR << PIC_YSEL_LOW_USB_SHIFT);
		FUNC6(FUNC0(PIC_YSEL_LOW), hi, lo);
		break;
	default:
		break;
	}
}