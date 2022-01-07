
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar724x_pci_controller {scalar_t__ ctrl_base; } ;


 int AR724X_PCI_APP_LTSSM_ENABLE ;
 scalar_t__ AR724X_PCI_REG_APP ;
 int AR724X_PLL_REG_PCIE_CONFIG ;
 int AR724X_PLL_REG_PCIE_CONFIG_PPL_BYPASS ;
 int AR724X_PLL_REG_PCIE_CONFIG_PPL_RESET ;
 int AR724X_RESET_PCIE ;
 int AR724X_RESET_PCIE_PHY ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int ,scalar_t__) ;
 int ar724x_pci_check_link (struct ar724x_pci_controller*) ;
 int ath79_device_reset_clear (int ) ;
 int ath79_pll_rr (int ) ;
 int ath79_pll_wr (int ,int ) ;
 int mdelay (int) ;

__attribute__((used)) static void ar724x_pci_hw_init(struct ar724x_pci_controller *apc)
{
 u32 ppl, app;
 int wait = 0;


 ath79_device_reset_clear(AR724X_RESET_PCIE);
 ath79_device_reset_clear(AR724X_RESET_PCIE_PHY);


 ppl = ath79_pll_rr(AR724X_PLL_REG_PCIE_CONFIG);
 ppl &= ~AR724X_PLL_REG_PCIE_CONFIG_PPL_RESET;
 ath79_pll_wr(AR724X_PLL_REG_PCIE_CONFIG, ppl);


 ppl = ath79_pll_rr(AR724X_PLL_REG_PCIE_CONFIG);
 ppl &= ~AR724X_PLL_REG_PCIE_CONFIG_PPL_BYPASS;
 ath79_pll_wr(AR724X_PLL_REG_PCIE_CONFIG, ppl);


 app = __raw_readl(apc->ctrl_base + AR724X_PCI_REG_APP);
 app |= AR724X_PCI_APP_LTSSM_ENABLE;
 __raw_writel(app, apc->ctrl_base + AR724X_PCI_REG_APP);


 do {
  mdelay(10);
  wait++;
 } while (wait < 10 && !ar724x_pci_check_link(apc));
}
