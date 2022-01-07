
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct imx_ahci_priv {int imped_ratio; int phy_pclk0; int phy_pclk1; int epcs_tx_clk; int epcs_rx_clk; int phy_apbclk; scalar_t__ phy_base; int gpr; TYPE_1__* ahci_pdev; } ;
struct device {int dummy; } ;
struct ahci_host_priv {struct imx_ahci_priv* plat_data; } ;
struct TYPE_2__ {struct device dev; } ;


 int ENODEV ;
 int IMX8QM_CSR_MISC_OFFSET ;
 int IMX8QM_CSR_PCIEA_OFFSET ;
 int IMX8QM_CSR_PCIEB_OFFSET ;
 int IMX8QM_CSR_PCIE_CTRL2_OFFSET ;
 int IMX8QM_CSR_PHYX1_OFFSET ;
 int IMX8QM_CSR_PHYX2_OFFSET ;
 int IMX8QM_CSR_PHYX_STTS0_OFFSET ;
 int IMX8QM_CSR_SATA_OFFSET ;
 int IMX8QM_CTRL_BUTTON_RST_N ;
 int IMX8QM_CTRL_LTSSM_ENABLE ;
 int IMX8QM_CTRL_POWER_UP_RST_N ;
 int IMX8QM_LPCG_PHYX2_OFFSET ;
 int IMX8QM_LPCG_PHYX2_PCLK0_MASK ;
 int IMX8QM_LPCG_PHYX2_PCLK1_MASK ;
 int IMX8QM_MISC_CLKREQN_IN_OVERRIDE_0 ;
 int IMX8QM_MISC_CLKREQN_IN_OVERRIDE_1 ;
 int IMX8QM_MISC_CLKREQN_OUT_OVERRIDE_0 ;
 int IMX8QM_MISC_CLKREQN_OUT_OVERRIDE_1 ;
 int IMX8QM_MISC_IOB_RXENA ;
 int IMX8QM_MISC_IOB_TXENA ;
 int IMX8QM_MISC_PHYX1_EPCS_SEL ;
 int IMX8QM_PHY_APB_RSTN_0 ;
 int IMX8QM_PHY_MODE_MASK ;
 int IMX8QM_PHY_MODE_SATA ;
 int IMX8QM_PHY_PIPE_RSTN_0 ;
 int IMX8QM_PHY_PIPE_RSTN_1 ;
 int IMX8QM_PHY_PIPE_RSTN_OVERRIDE_0 ;
 int IMX8QM_PHY_PIPE_RSTN_OVERRIDE_1 ;
 int IMX8QM_SATA_CTRL_EPCS_PHYRESET_N ;
 int IMX8QM_SATA_CTRL_RESET_N ;
 scalar_t__ IMX8QM_SATA_PHY_RX_IMPED_RATIO_OFFSET ;
 scalar_t__ IMX8QM_SATA_PHY_TX_IMPED_RATIO_OFFSET ;
 int IMX8QM_STTS0_LANE0_TX_PLL_LOCK ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int readb (scalar_t__) ;
 int regmap_read (int ,int,int*) ;
 int regmap_update_bits (int ,int,int,int) ;
 int udelay (int) ;
 scalar_t__ unlikely (int) ;
 int usleep_range (int,int) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int imx8_sata_enable(struct ahci_host_priv *hpriv)
{
 u32 val, reg;
 int i, ret;
 struct imx_ahci_priv *imxpriv = hpriv->plat_data;
 struct device *dev = &imxpriv->ahci_pdev->dev;


 ret = clk_prepare_enable(imxpriv->phy_pclk0);
 if (ret < 0) {
  dev_err(dev, "can't enable phy_pclk0.\n");
  return ret;
 }
 ret = clk_prepare_enable(imxpriv->phy_pclk1);
 if (ret < 0) {
  dev_err(dev, "can't enable phy_pclk1.\n");
  goto disable_phy_pclk0;
 }
 ret = clk_prepare_enable(imxpriv->epcs_tx_clk);
 if (ret < 0) {
  dev_err(dev, "can't enable epcs_tx_clk.\n");
  goto disable_phy_pclk1;
 }
 ret = clk_prepare_enable(imxpriv->epcs_rx_clk);
 if (ret < 0) {
  dev_err(dev, "can't enable epcs_rx_clk.\n");
  goto disable_epcs_tx_clk;
 }
 ret = clk_prepare_enable(imxpriv->phy_apbclk);
 if (ret < 0) {
  dev_err(dev, "can't enable phy_apbclk.\n");
  goto disable_epcs_rx_clk;
 }

 regmap_read(imxpriv->gpr, IMX8QM_CSR_PCIEA_OFFSET +
   IMX8QM_CSR_PCIE_CTRL2_OFFSET, &val);
 if ((val & IMX8QM_CTRL_LTSSM_ENABLE) == 0) {

  regmap_update_bits(imxpriv->gpr,
    IMX8QM_CSR_PHYX2_OFFSET,
    IMX8QM_PHY_PIPE_RSTN_0 |
    IMX8QM_PHY_PIPE_RSTN_OVERRIDE_0,
    IMX8QM_PHY_PIPE_RSTN_0 |
    IMX8QM_PHY_PIPE_RSTN_OVERRIDE_0);
 }
 regmap_read(imxpriv->gpr, IMX8QM_CSR_PCIEB_OFFSET +
   IMX8QM_CSR_PCIE_CTRL2_OFFSET, &reg);
 if ((reg & IMX8QM_CTRL_LTSSM_ENABLE) == 0) {

  regmap_update_bits(imxpriv->gpr,
    IMX8QM_CSR_PHYX2_OFFSET,
    IMX8QM_PHY_PIPE_RSTN_1 |
    IMX8QM_PHY_PIPE_RSTN_OVERRIDE_1,
    IMX8QM_PHY_PIPE_RSTN_1 |
    IMX8QM_PHY_PIPE_RSTN_OVERRIDE_1);
 }
 if (((reg | val) & IMX8QM_CTRL_LTSSM_ENABLE) == 0) {

  regmap_update_bits(imxpriv->gpr,
    IMX8QM_LPCG_PHYX2_OFFSET,
    IMX8QM_LPCG_PHYX2_PCLK0_MASK |
    IMX8QM_LPCG_PHYX2_PCLK1_MASK,
    0);
 }


 val = IMX8QM_CSR_PCIEA_OFFSET + IMX8QM_CSR_PCIE_CTRL2_OFFSET;
 regmap_update_bits(imxpriv->gpr,
   val,
   IMX8QM_CTRL_BUTTON_RST_N,
   IMX8QM_CTRL_BUTTON_RST_N);
 regmap_update_bits(imxpriv->gpr,
   val,
   IMX8QM_CTRL_POWER_UP_RST_N,
   IMX8QM_CTRL_POWER_UP_RST_N);


 regmap_update_bits(imxpriv->gpr,
   IMX8QM_CSR_PHYX1_OFFSET,
   IMX8QM_PHY_MODE_MASK,
   IMX8QM_PHY_MODE_SATA);





 regmap_update_bits(imxpriv->gpr,
   IMX8QM_CSR_MISC_OFFSET,
   IMX8QM_MISC_IOB_RXENA,
   IMX8QM_MISC_IOB_RXENA);
 regmap_update_bits(imxpriv->gpr,
   IMX8QM_CSR_MISC_OFFSET,
   IMX8QM_MISC_IOB_TXENA,
   0);
 regmap_update_bits(imxpriv->gpr,
   IMX8QM_CSR_MISC_OFFSET,
   IMX8QM_MISC_PHYX1_EPCS_SEL,
   IMX8QM_MISC_PHYX1_EPCS_SEL);
 regmap_update_bits(imxpriv->gpr,
   IMX8QM_CSR_MISC_OFFSET,
   IMX8QM_MISC_CLKREQN_OUT_OVERRIDE_1 |
   IMX8QM_MISC_CLKREQN_OUT_OVERRIDE_0 |
   IMX8QM_MISC_CLKREQN_IN_OVERRIDE_1 |
   IMX8QM_MISC_CLKREQN_IN_OVERRIDE_0,
   IMX8QM_MISC_CLKREQN_OUT_OVERRIDE_1 |
   IMX8QM_MISC_CLKREQN_OUT_OVERRIDE_0 |
   IMX8QM_MISC_CLKREQN_IN_OVERRIDE_1 |
   IMX8QM_MISC_CLKREQN_IN_OVERRIDE_0);


 regmap_update_bits(imxpriv->gpr,
   IMX8QM_CSR_SATA_OFFSET,
   IMX8QM_SATA_CTRL_EPCS_PHYRESET_N,
   0);

 regmap_update_bits(imxpriv->gpr,
   IMX8QM_CSR_SATA_OFFSET,
   IMX8QM_SATA_CTRL_EPCS_PHYRESET_N,
   IMX8QM_SATA_CTRL_EPCS_PHYRESET_N);


 regmap_update_bits(imxpriv->gpr,
   IMX8QM_CSR_SATA_OFFSET,
   IMX8QM_SATA_CTRL_RESET_N,
   IMX8QM_SATA_CTRL_RESET_N);
 udelay(1);
 regmap_update_bits(imxpriv->gpr,
   IMX8QM_CSR_SATA_OFFSET,
   IMX8QM_SATA_CTRL_RESET_N,
   0);
 regmap_update_bits(imxpriv->gpr,
   IMX8QM_CSR_SATA_OFFSET,
   IMX8QM_SATA_CTRL_RESET_N,
   IMX8QM_SATA_CTRL_RESET_N);


 regmap_update_bits(imxpriv->gpr,
   IMX8QM_CSR_PHYX1_OFFSET,
   IMX8QM_PHY_APB_RSTN_0,
   IMX8QM_PHY_APB_RSTN_0);

 for (i = 0; i < 100; i++) {
  reg = IMX8QM_CSR_PHYX1_OFFSET +
   IMX8QM_CSR_PHYX_STTS0_OFFSET;
  regmap_read(imxpriv->gpr, reg, &val);
  val &= IMX8QM_STTS0_LANE0_TX_PLL_LOCK;
  if (val == IMX8QM_STTS0_LANE0_TX_PLL_LOCK)
   break;
  udelay(1);
 }

 if (val != IMX8QM_STTS0_LANE0_TX_PLL_LOCK) {
  dev_err(dev, "TX PLL of the PHY is not locked\n");
  ret = -ENODEV;
 } else {
  writeb(imxpriv->imped_ratio, imxpriv->phy_base +
    IMX8QM_SATA_PHY_RX_IMPED_RATIO_OFFSET);
  writeb(imxpriv->imped_ratio, imxpriv->phy_base +
    IMX8QM_SATA_PHY_TX_IMPED_RATIO_OFFSET);
  reg = readb(imxpriv->phy_base +
    IMX8QM_SATA_PHY_RX_IMPED_RATIO_OFFSET);
  if (unlikely(reg != imxpriv->imped_ratio))
   dev_info(dev, "Can't set PHY RX impedance ratio.\n");
  reg = readb(imxpriv->phy_base +
    IMX8QM_SATA_PHY_TX_IMPED_RATIO_OFFSET);
  if (unlikely(reg != imxpriv->imped_ratio))
   dev_info(dev, "Can't set PHY TX impedance ratio.\n");
  usleep_range(50, 100);





  clk_disable_unprepare(imxpriv->phy_apbclk);
  clk_disable_unprepare(imxpriv->phy_pclk1);
  clk_disable_unprepare(imxpriv->phy_pclk0);
  return ret;
 }

 clk_disable_unprepare(imxpriv->phy_apbclk);
disable_epcs_rx_clk:
 clk_disable_unprepare(imxpriv->epcs_rx_clk);
disable_epcs_tx_clk:
 clk_disable_unprepare(imxpriv->epcs_tx_clk);
disable_phy_pclk1:
 clk_disable_unprepare(imxpriv->phy_pclk1);
disable_phy_pclk0:
 clk_disable_unprepare(imxpriv->phy_pclk0);

 return ret;
}
