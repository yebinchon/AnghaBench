
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_ahci_priv {scalar_t__ sata_aux_regs; TYPE_1__* soc; } ;
struct ahci_host_priv {struct tegra_ahci_priv* plat_data; } ;
struct TYPE_2__ {int supports_devslp; } ;


 scalar_t__ SATA_AUX_MISC_CNTL_1_0 ;
 int SATA_AUX_MISC_CNTL_1_0_SDS_SUPPORT ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void tegra_ahci_handle_quirks(struct ahci_host_priv *hpriv)
{
 struct tegra_ahci_priv *tegra = hpriv->plat_data;
 u32 val;

 if (tegra->sata_aux_regs && !tegra->soc->supports_devslp) {
  val = readl(tegra->sata_aux_regs + SATA_AUX_MISC_CNTL_1_0);
  val &= ~SATA_AUX_MISC_CNTL_1_0_SDS_SUPPORT;
  writel(val, tegra->sata_aux_regs + SATA_AUX_MISC_CNTL_1_0);
 }
}
