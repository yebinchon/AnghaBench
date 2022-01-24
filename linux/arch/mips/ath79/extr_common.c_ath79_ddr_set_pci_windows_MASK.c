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
 int /*<<< orphan*/  AR71XX_PCI_WIN0_OFFS ; 
 int /*<<< orphan*/  AR71XX_PCI_WIN1_OFFS ; 
 int /*<<< orphan*/  AR71XX_PCI_WIN2_OFFS ; 
 int /*<<< orphan*/  AR71XX_PCI_WIN3_OFFS ; 
 int /*<<< orphan*/  AR71XX_PCI_WIN4_OFFS ; 
 int /*<<< orphan*/  AR71XX_PCI_WIN5_OFFS ; 
 int /*<<< orphan*/  AR71XX_PCI_WIN6_OFFS ; 
 int /*<<< orphan*/  AR71XX_PCI_WIN7_OFFS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ ath79_ddr_pci_win_base ; 

void FUNC2(void)
{
	FUNC0(!ath79_ddr_pci_win_base);

	FUNC1(AR71XX_PCI_WIN0_OFFS, ath79_ddr_pci_win_base + 0x0);
	FUNC1(AR71XX_PCI_WIN1_OFFS, ath79_ddr_pci_win_base + 0x4);
	FUNC1(AR71XX_PCI_WIN2_OFFS, ath79_ddr_pci_win_base + 0x8);
	FUNC1(AR71XX_PCI_WIN3_OFFS, ath79_ddr_pci_win_base + 0xc);
	FUNC1(AR71XX_PCI_WIN4_OFFS, ath79_ddr_pci_win_base + 0x10);
	FUNC1(AR71XX_PCI_WIN5_OFFS, ath79_ddr_pci_win_base + 0x14);
	FUNC1(AR71XX_PCI_WIN6_OFFS, ath79_ddr_pci_win_base + 0x18);
	FUNC1(AR71XX_PCI_WIN7_OFFS, ath79_ddr_pci_win_base + 0x1c);
}