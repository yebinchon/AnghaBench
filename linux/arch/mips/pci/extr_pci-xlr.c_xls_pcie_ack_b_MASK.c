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
struct irq_data {int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETLOGIC_IO_PCIE_1_OFFSET ; 
#define  PIC_PCIE_LINK0_IRQ 131 
#define  PIC_PCIE_LINK1_IRQ 130 
#define  PIC_PCIE_XLSB0_LINK2_IRQ 129 
#define  PIC_PCIE_XLSB0_LINK3_IRQ 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(struct irq_data *d)
{
	uint64_t pciebase_le = FUNC0(NETLOGIC_IO_PCIE_1_OFFSET);

	switch (d->irq) {
	case PIC_PCIE_LINK0_IRQ:
		FUNC1(pciebase_le, (0x90 >> 2), 0xffffffff);
		break;
	case PIC_PCIE_LINK1_IRQ:
		FUNC1(pciebase_le, (0x94 >> 2), 0xffffffff);
		break;
	case PIC_PCIE_XLSB0_LINK2_IRQ:
		FUNC1(pciebase_le, (0x190 >> 2), 0xffffffff);
		break;
	case PIC_PCIE_XLSB0_LINK3_IRQ:
		FUNC1(pciebase_le, (0x194 >> 2), 0xffffffff);
		break;
	}
}