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
struct imx_ahci_priv {int type; int /*<<< orphan*/  sata_ref_clk; int /*<<< orphan*/  epcs_tx_clk; int /*<<< orphan*/  epcs_rx_clk; int /*<<< orphan*/  gpr; scalar_t__ no_device; } ;
struct ahci_host_priv {struct imx_ahci_priv* plat_data; } ;

/* Variables and functions */
#define  AHCI_IMX6Q 130 
#define  AHCI_IMX6QP 129 
#define  AHCI_IMX8QM 128 
 int IMX6Q_GPR13_SATA_MPLL_CLK_EN ; 
 int IMX6Q_GPR5_SATA_SW_PD ; 
 int /*<<< orphan*/  IOMUXC_GPR13 ; 
 int /*<<< orphan*/  IOMUXC_GPR5 ; 
 int /*<<< orphan*/  FUNC0 (struct ahci_host_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(struct ahci_host_priv *hpriv)
{
	struct imx_ahci_priv *imxpriv = hpriv->plat_data;

	if (imxpriv->no_device)
		return;

	switch (imxpriv->type) {
	case AHCI_IMX6QP:
		FUNC2(imxpriv->gpr, IOMUXC_GPR5,
				   IMX6Q_GPR5_SATA_SW_PD,
				   IMX6Q_GPR5_SATA_SW_PD);
		FUNC2(imxpriv->gpr, IOMUXC_GPR13,
				   IMX6Q_GPR13_SATA_MPLL_CLK_EN,
				   !IMX6Q_GPR13_SATA_MPLL_CLK_EN);
		break;

	case AHCI_IMX6Q:
		FUNC2(imxpriv->gpr, IOMUXC_GPR13,
				   IMX6Q_GPR13_SATA_MPLL_CLK_EN,
				   !IMX6Q_GPR13_SATA_MPLL_CLK_EN);
		break;

	case AHCI_IMX8QM:
		FUNC1(imxpriv->epcs_rx_clk);
		FUNC1(imxpriv->epcs_tx_clk);
		break;

	default:
		break;
	}

	FUNC1(imxpriv->sata_ref_clk);

	FUNC0(hpriv);
}