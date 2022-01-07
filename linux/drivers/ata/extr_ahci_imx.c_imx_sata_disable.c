
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_ahci_priv {int type; int sata_ref_clk; int epcs_tx_clk; int epcs_rx_clk; int gpr; scalar_t__ no_device; } ;
struct ahci_host_priv {struct imx_ahci_priv* plat_data; } ;





 int IMX6Q_GPR13_SATA_MPLL_CLK_EN ;
 int IMX6Q_GPR5_SATA_SW_PD ;
 int IOMUXC_GPR13 ;
 int IOMUXC_GPR5 ;
 int ahci_platform_disable_regulators (struct ahci_host_priv*) ;
 int clk_disable_unprepare (int ) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void imx_sata_disable(struct ahci_host_priv *hpriv)
{
 struct imx_ahci_priv *imxpriv = hpriv->plat_data;

 if (imxpriv->no_device)
  return;

 switch (imxpriv->type) {
 case 129:
  regmap_update_bits(imxpriv->gpr, IOMUXC_GPR5,
       IMX6Q_GPR5_SATA_SW_PD,
       IMX6Q_GPR5_SATA_SW_PD);
  regmap_update_bits(imxpriv->gpr, IOMUXC_GPR13,
       IMX6Q_GPR13_SATA_MPLL_CLK_EN,
       !IMX6Q_GPR13_SATA_MPLL_CLK_EN);
  break;

 case 130:
  regmap_update_bits(imxpriv->gpr, IOMUXC_GPR13,
       IMX6Q_GPR13_SATA_MPLL_CLK_EN,
       !IMX6Q_GPR13_SATA_MPLL_CLK_EN);
  break;

 case 128:
  clk_disable_unprepare(imxpriv->epcs_rx_clk);
  clk_disable_unprepare(imxpriv->epcs_tx_clk);
  break;

 default:
  break;
 }

 clk_disable_unprepare(imxpriv->sata_ref_clk);

 ahci_platform_disable_regulators(hpriv);
}
