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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct imx_ahci_priv {int clkreq_gpio; void* phy_apbclk; void* phy_pclk1; void* phy_pclk0; void* epcs_rx_clk; void* epcs_tx_clk; void* gpr; int /*<<< orphan*/  phy_base; int /*<<< orphan*/  imped_ratio; struct platform_device* ahci_pdev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int /*<<< orphan*/  IMX8QM_SATA_PHY_IMPED_RATIO_85OHM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,char*) ; 
 int FUNC5 (struct device*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*) ; 
 void* FUNC12 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC13(struct device *dev, struct imx_ahci_priv *imxpriv)
{
	int ret;
	struct resource *phy_res;
	struct platform_device *pdev = imxpriv->ahci_pdev;
	struct device_node *np = dev->of_node;

	if (FUNC9(np, "fsl,phy-imp", &imxpriv->imped_ratio))
		imxpriv->imped_ratio = IMX8QM_SATA_PHY_IMPED_RATIO_85OHM;
	phy_res = FUNC10(pdev, IORESOURCE_MEM, "phy");
	if (phy_res) {
		imxpriv->phy_base = FUNC6(dev, phy_res->start,
					FUNC11(phy_res));
		if (!imxpriv->phy_base) {
			FUNC2(dev, "error with ioremap\n");
			return -ENOMEM;
		}
	} else {
		FUNC2(dev, "missing *phy* reg region.\n");
		return -ENOMEM;
	}
	imxpriv->gpr =
		 FUNC12(np, "hsio");
	if (FUNC0(imxpriv->gpr)) {
		FUNC2(dev, "unable to find gpr registers\n");
		return FUNC1(imxpriv->gpr);
	}

	imxpriv->epcs_tx_clk = FUNC4(dev, "epcs_tx");
	if (FUNC0(imxpriv->epcs_tx_clk)) {
		FUNC2(dev, "can't get epcs_tx_clk clock.\n");
		return FUNC1(imxpriv->epcs_tx_clk);
	}
	imxpriv->epcs_rx_clk = FUNC4(dev, "epcs_rx");
	if (FUNC0(imxpriv->epcs_rx_clk)) {
		FUNC2(dev, "can't get epcs_rx_clk clock.\n");
		return FUNC1(imxpriv->epcs_rx_clk);
	}
	imxpriv->phy_pclk0 = FUNC4(dev, "phy_pclk0");
	if (FUNC0(imxpriv->phy_pclk0)) {
		FUNC2(dev, "can't get phy_pclk0 clock.\n");
		return FUNC1(imxpriv->phy_pclk0);
	}
	imxpriv->phy_pclk1 = FUNC4(dev, "phy_pclk1");
	if (FUNC0(imxpriv->phy_pclk1)) {
		FUNC2(dev, "can't get phy_pclk1 clock.\n");
		return FUNC1(imxpriv->phy_pclk1);
	}
	imxpriv->phy_apbclk = FUNC4(dev, "phy_apbclk");
	if (FUNC0(imxpriv->phy_apbclk)) {
		FUNC2(dev, "can't get phy_apbclk clock.\n");
		return FUNC1(imxpriv->phy_apbclk);
	}

	/* Fetch GPIO, then enable the external OSC */
	imxpriv->clkreq_gpio = FUNC8(np, "clkreq-gpio", 0);
	if (FUNC7(imxpriv->clkreq_gpio)) {
		ret = FUNC5(dev, imxpriv->clkreq_gpio,
					    GPIOF_OUT_INIT_LOW,
					    "SATA CLKREQ");
		if (ret == -EBUSY) {
			FUNC3(dev, "clkreq had been initialized.\n");
		} else if (ret) {
			FUNC2(dev, "%d unable to get clkreq.\n", ret);
			return ret;
		}
	} else if (imxpriv->clkreq_gpio == -EPROBE_DEFER) {
		return imxpriv->clkreq_gpio;
	}

	return 0;
}