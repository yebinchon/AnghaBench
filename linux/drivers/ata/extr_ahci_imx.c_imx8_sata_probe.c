
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct imx_ahci_priv {int clkreq_gpio; void* phy_apbclk; void* phy_pclk1; void* phy_pclk0; void* epcs_rx_clk; void* epcs_tx_clk; void* gpr; int phy_base; int imped_ratio; struct platform_device* ahci_pdev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int EBUSY ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GPIOF_OUT_INIT_LOW ;
 int IMX8QM_SATA_PHY_IMPED_RATIO_85OHM ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 void* devm_clk_get (struct device*,char*) ;
 int devm_gpio_request_one (struct device*,int,int ,char*) ;
 int devm_ioremap (struct device*,int ,int ) ;
 scalar_t__ gpio_is_valid (int) ;
 int of_get_named_gpio (struct device_node*,char*,int ) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int resource_size (struct resource*) ;
 void* syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;

__attribute__((used)) static int imx8_sata_probe(struct device *dev, struct imx_ahci_priv *imxpriv)
{
 int ret;
 struct resource *phy_res;
 struct platform_device *pdev = imxpriv->ahci_pdev;
 struct device_node *np = dev->of_node;

 if (of_property_read_u32(np, "fsl,phy-imp", &imxpriv->imped_ratio))
  imxpriv->imped_ratio = IMX8QM_SATA_PHY_IMPED_RATIO_85OHM;
 phy_res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "phy");
 if (phy_res) {
  imxpriv->phy_base = devm_ioremap(dev, phy_res->start,
     resource_size(phy_res));
  if (!imxpriv->phy_base) {
   dev_err(dev, "error with ioremap\n");
   return -ENOMEM;
  }
 } else {
  dev_err(dev, "missing *phy* reg region.\n");
  return -ENOMEM;
 }
 imxpriv->gpr =
   syscon_regmap_lookup_by_phandle(np, "hsio");
 if (IS_ERR(imxpriv->gpr)) {
  dev_err(dev, "unable to find gpr registers\n");
  return PTR_ERR(imxpriv->gpr);
 }

 imxpriv->epcs_tx_clk = devm_clk_get(dev, "epcs_tx");
 if (IS_ERR(imxpriv->epcs_tx_clk)) {
  dev_err(dev, "can't get epcs_tx_clk clock.\n");
  return PTR_ERR(imxpriv->epcs_tx_clk);
 }
 imxpriv->epcs_rx_clk = devm_clk_get(dev, "epcs_rx");
 if (IS_ERR(imxpriv->epcs_rx_clk)) {
  dev_err(dev, "can't get epcs_rx_clk clock.\n");
  return PTR_ERR(imxpriv->epcs_rx_clk);
 }
 imxpriv->phy_pclk0 = devm_clk_get(dev, "phy_pclk0");
 if (IS_ERR(imxpriv->phy_pclk0)) {
  dev_err(dev, "can't get phy_pclk0 clock.\n");
  return PTR_ERR(imxpriv->phy_pclk0);
 }
 imxpriv->phy_pclk1 = devm_clk_get(dev, "phy_pclk1");
 if (IS_ERR(imxpriv->phy_pclk1)) {
  dev_err(dev, "can't get phy_pclk1 clock.\n");
  return PTR_ERR(imxpriv->phy_pclk1);
 }
 imxpriv->phy_apbclk = devm_clk_get(dev, "phy_apbclk");
 if (IS_ERR(imxpriv->phy_apbclk)) {
  dev_err(dev, "can't get phy_apbclk clock.\n");
  return PTR_ERR(imxpriv->phy_apbclk);
 }


 imxpriv->clkreq_gpio = of_get_named_gpio(np, "clkreq-gpio", 0);
 if (gpio_is_valid(imxpriv->clkreq_gpio)) {
  ret = devm_gpio_request_one(dev, imxpriv->clkreq_gpio,
         GPIOF_OUT_INIT_LOW,
         "SATA CLKREQ");
  if (ret == -EBUSY) {
   dev_info(dev, "clkreq had been initialized.\n");
  } else if (ret) {
   dev_err(dev, "%d unable to get clkreq.\n", ret);
   return ret;
  }
 } else if (imxpriv->clkreq_gpio == -EPROBE_DEFER) {
  return imxpriv->clkreq_gpio;
 }

 return 0;
}
