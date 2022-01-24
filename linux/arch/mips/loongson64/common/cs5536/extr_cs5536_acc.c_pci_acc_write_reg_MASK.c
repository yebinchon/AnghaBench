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
 int CS5536_ACC_INTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLCP_SOFT_COM ; 
 int /*<<< orphan*/  GLIU_IOD_BM1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLIU_PAE ; 
#define  PCI_ACC_INT_REG 131 
#define  PCI_BAR0_REG 130 
 int PCI_BAR_RANGE_MASK ; 
#define  PCI_COMMAND 129 
 int PCI_COMMAND_MASTER ; 
#define  PCI_STATUS 128 
 int PCI_STATUS_PARITY ; 
 int /*<<< orphan*/  PIC_YSEL_LOW ; 
 int PIC_YSEL_LOW_ACC_SHIFT ; 
 int /*<<< orphan*/  SB_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int SB_PARE_ERR_FLAG ; 
 int SOFT_BAR_ACC_FLAG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 

void FUNC6(int reg, u32 value)
{
	u32 hi = 0, lo = value;

	switch (reg) {
	case PCI_COMMAND:
		FUNC4(FUNC2(GLIU_PAE), &hi, &lo);
		if (value & PCI_COMMAND_MASTER)
			lo |= (0x03 << 8);
		else
			lo &= ~(0x03 << 8);
		FUNC5(FUNC2(GLIU_PAE), hi, lo);
		break;
	case PCI_STATUS:
		if (value & PCI_STATUS_PARITY) {
			FUNC4(FUNC3(SB_ERROR), &hi, &lo);
			if (lo & SB_PARE_ERR_FLAG) {
				lo = (lo & 0x0000ffff) | SB_PARE_ERR_FLAG;
				FUNC5(FUNC3(SB_ERROR), hi, lo);
			}
		}
		break;
	case PCI_BAR0_REG:
		if (value == PCI_BAR_RANGE_MASK) {
			FUNC4(FUNC1(GLCP_SOFT_COM), &hi, &lo);
			lo |= SOFT_BAR_ACC_FLAG;
			FUNC5(FUNC1(GLCP_SOFT_COM), hi, lo);
		} else if (value & 0x01) {
			value &= 0xfffffffc;
			hi = 0xA0000000 | ((value & 0x000ff000) >> 12);
			lo = 0x000fff80 | ((value & 0x00000fff) << 20);
			FUNC5(FUNC2(GLIU_IOD_BM1), hi, lo);
		}
		break;
	case PCI_ACC_INT_REG:
		FUNC4(FUNC0(PIC_YSEL_LOW), &hi, &lo);
		/* disable all the usb interrupt in PIC */
		lo &= ~(0xf << PIC_YSEL_LOW_ACC_SHIFT);
		if (value)	/* enable all the acc interrupt in PIC */
			lo |= (CS5536_ACC_INTR << PIC_YSEL_LOW_ACC_SHIFT);
		FUNC5(FUNC0(PIC_YSEL_LOW), hi, lo);
		break;
	default:
		break;
	}
}