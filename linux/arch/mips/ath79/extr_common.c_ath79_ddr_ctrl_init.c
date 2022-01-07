
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AR71XX_DDR_CTRL_BASE ;
 int AR71XX_DDR_CTRL_SIZE ;
 void* ath79_ddr_base ;
 void* ath79_ddr_pci_win_base ;
 void* ath79_ddr_wb_flush_base ;
 void* ioremap_nocache (int ,int ) ;
 scalar_t__ soc_is_ar724x () ;
 scalar_t__ soc_is_ar913x () ;
 scalar_t__ soc_is_ar933x () ;

void ath79_ddr_ctrl_init(void)
{
 ath79_ddr_base = ioremap_nocache(AR71XX_DDR_CTRL_BASE,
      AR71XX_DDR_CTRL_SIZE);
 if (soc_is_ar913x() || soc_is_ar724x() || soc_is_ar933x()) {
  ath79_ddr_wb_flush_base = ath79_ddr_base + 0x7c;
  ath79_ddr_pci_win_base = 0;
 } else {
  ath79_ddr_wb_flush_base = ath79_ddr_base + 0x9c;
  ath79_ddr_pci_win_base = ath79_ddr_base + 0x7c;
 }
}
