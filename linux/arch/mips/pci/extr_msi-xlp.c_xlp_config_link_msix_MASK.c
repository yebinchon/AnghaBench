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
typedef  int uint64_t ;
typedef  int u32 ;

/* Variables and functions */
 int MSI_ADDR_SZ ; 
 int PCIE_9XX_BRIDGE_MSIX_ADDR_BASE ; 
 int PCIE_9XX_BRIDGE_MSIX_ADDR_LIMIT ; 
 int PCIE_9XX_INT_EN0 ; 
 int PCIE_BRIDGE_MSIX_ADDR_BASE ; 
 int PCIE_BRIDGE_MSIX_ADDR_LIMIT ; 
 int PCIE_INT_EN0 ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 

__attribute__((used)) static void FUNC5(uint64_t lnkbase, int lirq, uint64_t msixaddr)
{
	u32 val;

	val = FUNC2(lnkbase, 0x2C);
	if ((val & 0x80000000U) == 0) {
		val |= 0x80000000U;
		FUNC4(lnkbase, 0x2C, val);
	}

	if (FUNC0()) {
		val = FUNC2(lnkbase, PCIE_9XX_INT_EN0);
		if ((val & 0x200) == 0) {
			val |= 0x200;		/* MSI Interrupt enable */
			FUNC4(lnkbase, PCIE_9XX_INT_EN0, val);
		}
	} else {
		val = FUNC2(lnkbase, PCIE_INT_EN0);
		if ((val & 0x200) == 0) {
			val |= 0x200;		/* MSI Interrupt enable */
			FUNC4(lnkbase, PCIE_INT_EN0, val);
		}
	}

	val = FUNC2(lnkbase, 0x1);	/* CMD */
	if ((val & 0x0400) == 0) {
		val |= 0x0400;
		FUNC4(lnkbase, 0x1, val);
	}

	/* Update IRQ in the PCI irq reg */
	val = FUNC1(lnkbase, 0xf);
	val &= ~0x1fu;
	val |= (1 << 8) | lirq;
	FUNC3(lnkbase, 0xf, val);

	if (FUNC0()) {
		/* MSI-X addresses */
		FUNC4(lnkbase, PCIE_9XX_BRIDGE_MSIX_ADDR_BASE,
				msixaddr >> 8);
		FUNC4(lnkbase, PCIE_9XX_BRIDGE_MSIX_ADDR_LIMIT,
				(msixaddr + MSI_ADDR_SZ) >> 8);
	} else {
		/* MSI-X addresses */
		FUNC4(lnkbase, PCIE_BRIDGE_MSIX_ADDR_BASE,
				msixaddr >> 8);
		FUNC4(lnkbase, PCIE_BRIDGE_MSIX_ADDR_LIMIT,
				(msixaddr + MSI_ADDR_SZ) >> 8);
	}
}