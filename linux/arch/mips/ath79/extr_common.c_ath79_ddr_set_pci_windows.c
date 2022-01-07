
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AR71XX_PCI_WIN0_OFFS ;
 int AR71XX_PCI_WIN1_OFFS ;
 int AR71XX_PCI_WIN2_OFFS ;
 int AR71XX_PCI_WIN3_OFFS ;
 int AR71XX_PCI_WIN4_OFFS ;
 int AR71XX_PCI_WIN5_OFFS ;
 int AR71XX_PCI_WIN6_OFFS ;
 int AR71XX_PCI_WIN7_OFFS ;
 int BUG_ON (int) ;
 int __raw_writel (int ,scalar_t__) ;
 scalar_t__ ath79_ddr_pci_win_base ;

void ath79_ddr_set_pci_windows(void)
{
 BUG_ON(!ath79_ddr_pci_win_base);

 __raw_writel(AR71XX_PCI_WIN0_OFFS, ath79_ddr_pci_win_base + 0x0);
 __raw_writel(AR71XX_PCI_WIN1_OFFS, ath79_ddr_pci_win_base + 0x4);
 __raw_writel(AR71XX_PCI_WIN2_OFFS, ath79_ddr_pci_win_base + 0x8);
 __raw_writel(AR71XX_PCI_WIN3_OFFS, ath79_ddr_pci_win_base + 0xc);
 __raw_writel(AR71XX_PCI_WIN4_OFFS, ath79_ddr_pci_win_base + 0x10);
 __raw_writel(AR71XX_PCI_WIN5_OFFS, ath79_ddr_pci_win_base + 0x14);
 __raw_writel(AR71XX_PCI_WIN6_OFFS, ath79_ddr_pci_win_base + 0x18);
 __raw_writel(AR71XX_PCI_WIN7_OFFS, ath79_ddr_pci_win_base + 0x1c);
}
