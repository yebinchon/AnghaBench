
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AR71XX_RESET_PCI_BUS ;
 int AR71XX_RESET_PCI_CORE ;
 int ath79_ddr_set_pci_windows () ;
 int ath79_device_reset_clear (int) ;
 int ath79_device_reset_set (int) ;
 int mdelay (int) ;

__attribute__((used)) static void ar71xx_pci_reset(void)
{
 ath79_device_reset_set(AR71XX_RESET_PCI_BUS | AR71XX_RESET_PCI_CORE);
 mdelay(100);

 ath79_device_reset_clear(AR71XX_RESET_PCI_BUS | AR71XX_RESET_PCI_CORE);
 mdelay(100);

 ath79_ddr_set_pci_windows();
 mdelay(100);
}
