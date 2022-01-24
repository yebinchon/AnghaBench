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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
#define  PIC_2XX_XHCI_0_IRQ 147 
#define  PIC_2XX_XHCI_1_IRQ 146 
#define  PIC_2XX_XHCI_2_IRQ 145 
#define  PIC_EHCI_0_IRQ 144 
#define  PIC_EHCI_1_IRQ 143 
#define  PIC_GPIO_IRQ 142 
#define  PIC_I2C_0_IRQ 141 
#define  PIC_I2C_1_IRQ 140 
#define  PIC_I2C_2_IRQ 139 
#define  PIC_I2C_3_IRQ 138 
 int FUNC0 (scalar_t__) ; 
#define  PIC_MMC_IRQ 137 
#define  PIC_NAND_IRQ 136 
#define  PIC_OHCI_0_IRQ 135 
#define  PIC_OHCI_1_IRQ 134 
#define  PIC_OHCI_2_IRQ 133 
#define  PIC_OHCI_3_IRQ 132 
 int FUNC1 (int) ; 
 scalar_t__ PIC_PCIE_LINK_LEGACY_IRQ_BASE ; 
#define  PIC_SATA_IRQ 131 
#define  PIC_SPI_IRQ 130 
#define  PIC_UART_0_IRQ 129 
#define  PIC_UART_1_IRQ 128 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLP_PCI_IRTINFO_REG ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(int irq)
{
	uint64_t pcibase;
	int devoff, irt;

	devoff = 0;
	switch (irq) {
	case PIC_UART_0_IRQ:
		devoff = FUNC12(0);
		break;
	case PIC_UART_1_IRQ:
		devoff = FUNC13(0);
		break;
	case PIC_MMC_IRQ:
		devoff = FUNC8(0);
		break;
	case PIC_I2C_0_IRQ:	/* I2C will be fixed up */
	case PIC_I2C_1_IRQ:
	case PIC_I2C_2_IRQ:
	case PIC_I2C_3_IRQ:
		if (FUNC20())
			devoff = FUNC2(0);
		else
			devoff = FUNC7(0);
		break;
	case PIC_SATA_IRQ:
		devoff = FUNC10(0);
		break;
	case PIC_GPIO_IRQ:
		devoff = FUNC6(0);
		break;
	case PIC_NAND_IRQ:
		devoff = FUNC9(0);
		break;
	case PIC_SPI_IRQ:
		devoff = FUNC11(0);
		break;
	default:
		if (FUNC20()) {
			switch (irq) {
				/* XLP2XX has three XHCI USB controller */
			case PIC_2XX_XHCI_0_IRQ:
				devoff = FUNC3(0);
				break;
			case PIC_2XX_XHCI_1_IRQ:
				devoff = FUNC4(0);
				break;
			case PIC_2XX_XHCI_2_IRQ:
				devoff = FUNC5(0);
				break;
			}
		} else {
			switch (irq) {
			case PIC_EHCI_0_IRQ:
				devoff = FUNC14(0);
				break;
			case PIC_EHCI_1_IRQ:
				devoff = FUNC15(0);
				break;
			case PIC_OHCI_0_IRQ:
				devoff = FUNC16(0);
				break;
			case PIC_OHCI_1_IRQ:
				devoff = FUNC17(0);
				break;
			case PIC_OHCI_2_IRQ:
				devoff = FUNC18(0);
				break;
			case PIC_OHCI_3_IRQ:
				devoff = FUNC19(0);
				break;
			}
		}
	}

	if (devoff != 0) {
		uint32_t val;

		pcibase = FUNC21(devoff);
		val = FUNC22(pcibase, XLP_PCI_IRTINFO_REG);
		if (val == 0xffffffff) {
			irt = -1;
		} else {
			irt = val & 0xffff;
			/* HW weirdness, I2C IRT entry has to be fixed up */
			switch (irq) {
			case PIC_I2C_1_IRQ:
				irt = irt + 1; break;
			case PIC_I2C_2_IRQ:
				irt = irt + 2; break;
			case PIC_I2C_3_IRQ:
				irt = irt + 3; break;
			}
		}
	} else if (irq >= FUNC1(0) &&
			irq <= FUNC1(3)) {
		/* HW bug, PCI IRT entries are bad on early silicon, fix */
		irt = FUNC0(irq -
					PIC_PCIE_LINK_LEGACY_IRQ_BASE);
	} else {
		irt = -1;
	}
	return irt;
}