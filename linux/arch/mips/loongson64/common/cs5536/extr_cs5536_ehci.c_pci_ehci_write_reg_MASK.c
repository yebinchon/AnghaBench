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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLCP_SOFT_COM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLIU_P2D_BM4 ; 
#define  PCI_BAR0_REG 132 
 int PCI_BAR_RANGE_MASK ; 
#define  PCI_COMMAND 131 
 int PCI_COMMAND_MASTER ; 
 int PCI_COMMAND_MEMORY ; 
#define  PCI_EHCI_FLADJ_REG 130 
#define  PCI_EHCI_LEGSMIEN_REG 129 
#define  PCI_STATUS 128 
 int PCI_STATUS_PARITY ; 
 int /*<<< orphan*/  SB_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int SB_PARE_ERR_FLAG ; 
 int SOFT_BAR_EHCI_FLAG ; 
 int /*<<< orphan*/  USB_EHCI ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 

void FUNC6(int reg, u32 value)
{
	u32 hi = 0, lo = value;

	switch (reg) {
	case PCI_COMMAND:
		FUNC4(FUNC3(USB_EHCI), &hi, &lo);
		if (value & PCI_COMMAND_MASTER)
			hi |= PCI_COMMAND_MASTER;
		else
			hi &= ~PCI_COMMAND_MASTER;

		if (value & PCI_COMMAND_MEMORY)
			hi |= PCI_COMMAND_MEMORY;
		else
			hi &= ~PCI_COMMAND_MEMORY;
		FUNC5(FUNC3(USB_EHCI), hi, lo);
		break;
	case PCI_STATUS:
		if (value & PCI_STATUS_PARITY) {
			FUNC4(FUNC2(SB_ERROR), &hi, &lo);
			if (lo & SB_PARE_ERR_FLAG) {
				lo = (lo & 0x0000ffff) | SB_PARE_ERR_FLAG;
				FUNC5(FUNC2(SB_ERROR), hi, lo);
			}
		}
		break;
	case PCI_BAR0_REG:
		if (value == PCI_BAR_RANGE_MASK) {
			FUNC4(FUNC0(GLCP_SOFT_COM), &hi, &lo);
			lo |= SOFT_BAR_EHCI_FLAG;
			FUNC5(FUNC0(GLCP_SOFT_COM), hi, lo);
		} else if ((value & 0x01) == 0x00) {
			FUNC4(FUNC3(USB_EHCI), &hi, &lo);
			lo = value;
			FUNC5(FUNC3(USB_EHCI), hi, lo);

			value &= 0xfffffff0;
			hi = 0x40000000 | ((value & 0xff000000) >> 24);
			lo = 0x000fffff | ((value & 0x00fff000) << 8);
			FUNC5(FUNC1(GLIU_P2D_BM4), hi, lo);
		}
		break;
	case PCI_EHCI_LEGSMIEN_REG:
		FUNC4(FUNC3(USB_EHCI), &hi, &lo);
		hi &= 0x003f0000;
		hi |= (value & 0x3f) << 16;
		FUNC5(FUNC3(USB_EHCI), hi, lo);
		break;
	case PCI_EHCI_FLADJ_REG:
		FUNC4(FUNC3(USB_EHCI), &hi, &lo);
		hi &= ~0x00003f00;
		hi |= value & 0x00003f00;
		FUNC5(FUNC3(USB_EHCI), hi, lo);
		break;
	default:
		break;
	}
}