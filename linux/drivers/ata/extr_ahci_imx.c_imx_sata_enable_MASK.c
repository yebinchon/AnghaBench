#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct imx_ahci_priv {scalar_t__ type; int phy_params; int /*<<< orphan*/  sata_ref_clk; int /*<<< orphan*/  gpr; scalar_t__ no_device; TYPE_1__* ahci_pdev; } ;
struct device {int dummy; } ;
struct ahci_host_priv {struct imx_ahci_priv* plat_data; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ AHCI_IMX6Q ; 
 scalar_t__ AHCI_IMX6QP ; 
 scalar_t__ AHCI_IMX8QM ; 
 int IMX6Q_GPR13_SATA_MPLL_CLK_EN ; 
 int IMX6Q_GPR13_SATA_MPLL_SS_EN ; 
 int IMX6Q_GPR13_SATA_RX_DPLL_MODE_MASK ; 
 int IMX6Q_GPR13_SATA_RX_EQ_VAL_MASK ; 
 int IMX6Q_GPR13_SATA_RX_LOS_LVL_MASK ; 
 int IMX6Q_GPR13_SATA_SPD_MODE_MASK ; 
 int IMX6Q_GPR13_SATA_TX_ATTEN_MASK ; 
 int IMX6Q_GPR13_SATA_TX_BOOST_MASK ; 
 int IMX6Q_GPR13_SATA_TX_EDGE_RATE ; 
 int IMX6Q_GPR13_SATA_TX_LVL_MASK ; 
 int /*<<< orphan*/  IOMUXC_GPR13 ; 
 int /*<<< orphan*/  FUNC0 (struct ahci_host_priv*) ; 
 int FUNC1 (struct ahci_host_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 int FUNC5 (struct ahci_host_priv*) ; 
 int FUNC6 (struct ahci_host_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct ahci_host_priv *hpriv)
{
	struct imx_ahci_priv *imxpriv = hpriv->plat_data;
	struct device *dev = &imxpriv->ahci_pdev->dev;
	int ret;

	if (imxpriv->no_device)
		return 0;

	ret = FUNC1(hpriv);
	if (ret)
		return ret;

	ret = FUNC3(imxpriv->sata_ref_clk);
	if (ret < 0)
		goto disable_regulator;

	if (imxpriv->type == AHCI_IMX6Q || imxpriv->type == AHCI_IMX6QP) {
		/*
		 * set PHY Paremeters, two steps to configure the GPR13,
		 * one write for rest of parameters, mask of first write
		 * is 0x07ffffff, and the other one write for setting
		 * the mpll_clk_en.
		 */
		FUNC7(imxpriv->gpr, IOMUXC_GPR13,
				   IMX6Q_GPR13_SATA_RX_EQ_VAL_MASK |
				   IMX6Q_GPR13_SATA_RX_LOS_LVL_MASK |
				   IMX6Q_GPR13_SATA_RX_DPLL_MODE_MASK |
				   IMX6Q_GPR13_SATA_SPD_MODE_MASK |
				   IMX6Q_GPR13_SATA_MPLL_SS_EN |
				   IMX6Q_GPR13_SATA_TX_ATTEN_MASK |
				   IMX6Q_GPR13_SATA_TX_BOOST_MASK |
				   IMX6Q_GPR13_SATA_TX_LVL_MASK |
				   IMX6Q_GPR13_SATA_MPLL_CLK_EN |
				   IMX6Q_GPR13_SATA_TX_EDGE_RATE,
				   imxpriv->phy_params);
		FUNC7(imxpriv->gpr, IOMUXC_GPR13,
				   IMX6Q_GPR13_SATA_MPLL_CLK_EN,
				   IMX6Q_GPR13_SATA_MPLL_CLK_EN);

		FUNC8(100, 200);

		ret = FUNC6(hpriv);
		if (ret) {
			FUNC4(dev, "failed to reset phy: %d\n", ret);
			goto disable_clk;
		}
	} else if (imxpriv->type == AHCI_IMX8QM) {
		ret = FUNC5(hpriv);
	}

	FUNC8(1000, 2000);

	return 0;

disable_clk:
	FUNC2(imxpriv->sata_ref_clk);
disable_regulator:
	FUNC0(hpriv);

	return ret;
}