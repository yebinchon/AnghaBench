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
typedef  int u32 ;
struct imx_ahci_priv {int imped_ratio; int /*<<< orphan*/  phy_pclk0; int /*<<< orphan*/  phy_pclk1; int /*<<< orphan*/  epcs_tx_clk; int /*<<< orphan*/  epcs_rx_clk; int /*<<< orphan*/  phy_apbclk; scalar_t__ phy_base; int /*<<< orphan*/  gpr; TYPE_1__* ahci_pdev; } ;
struct device {int dummy; } ;
struct ahci_host_priv {struct imx_ahci_priv* plat_data; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct ahci_host_priv *hpriv)
{
	u32 val, reg;
	int i, ret;
	struct imx_ahci_priv *imxpriv = hpriv->plat_data;
	struct device *dev = &imxpriv->ahci_pdev->dev;

	/* configure the hsio for sata */
	ret = FUNC1(imxpriv->phy_pclk0);
	if (ret < 0) {
		FUNC2(dev, "can't enable phy_pclk0.\n");
		return ret;
	}
	ret = FUNC1(imxpriv->phy_pclk1);
	if (ret < 0) {
		FUNC2(dev, "can't enable phy_pclk1.\n");
		goto disable_phy_pclk0;
	}
	ret = FUNC1(imxpriv->epcs_tx_clk);
	if (ret < 0) {
		FUNC2(dev, "can't enable epcs_tx_clk.\n");
		goto disable_phy_pclk1;
	}
	ret = FUNC1(imxpriv->epcs_rx_clk);
	if (ret < 0) {
		FUNC2(dev, "can't enable epcs_rx_clk.\n");
		goto disable_epcs_tx_clk;
	}
	ret = FUNC1(imxpriv->phy_apbclk);
	if (ret < 0) {
		FUNC2(dev, "can't enable phy_apbclk.\n");
		goto disable_epcs_rx_clk;
	}
	/* Configure PHYx2 PIPE_RSTN */
	FUNC5(imxpriv->gpr, IMX8QM_CSR_PCIEA_OFFSET +
			IMX8QM_CSR_PCIE_CTRL2_OFFSET, &val);
	if ((val & IMX8QM_CTRL_LTSSM_ENABLE) == 0) {
		/* The link of the PCIEA of HSIO is down */
		FUNC6(imxpriv->gpr,
				IMX8QM_CSR_PHYX2_OFFSET,
				IMX8QM_PHY_PIPE_RSTN_0 |
				IMX8QM_PHY_PIPE_RSTN_OVERRIDE_0,
				IMX8QM_PHY_PIPE_RSTN_0 |
				IMX8QM_PHY_PIPE_RSTN_OVERRIDE_0);
	}
	FUNC5(imxpriv->gpr, IMX8QM_CSR_PCIEB_OFFSET +
			IMX8QM_CSR_PCIE_CTRL2_OFFSET, &reg);
	if ((reg & IMX8QM_CTRL_LTSSM_ENABLE) == 0) {
		/* The link of the PCIEB of HSIO is down */
		FUNC6(imxpriv->gpr,
				IMX8QM_CSR_PHYX2_OFFSET,
				IMX8QM_PHY_PIPE_RSTN_1 |
				IMX8QM_PHY_PIPE_RSTN_OVERRIDE_1,
				IMX8QM_PHY_PIPE_RSTN_1 |
				IMX8QM_PHY_PIPE_RSTN_OVERRIDE_1);
	}
	if (((reg | val) & IMX8QM_CTRL_LTSSM_ENABLE) == 0) {
		/* The links of both PCIA and PCIEB of HSIO are down */
		FUNC6(imxpriv->gpr,
				IMX8QM_LPCG_PHYX2_OFFSET,
				IMX8QM_LPCG_PHYX2_PCLK0_MASK |
				IMX8QM_LPCG_PHYX2_PCLK1_MASK,
				0);
	}

	/* set PWR_RST and BT_RST of csr_pciea */
	val = IMX8QM_CSR_PCIEA_OFFSET + IMX8QM_CSR_PCIE_CTRL2_OFFSET;
	FUNC6(imxpriv->gpr,
			val,
			IMX8QM_CTRL_BUTTON_RST_N,
			IMX8QM_CTRL_BUTTON_RST_N);
	FUNC6(imxpriv->gpr,
			val,
			IMX8QM_CTRL_POWER_UP_RST_N,
			IMX8QM_CTRL_POWER_UP_RST_N);

	/* PHYX1_MODE to SATA */
	FUNC6(imxpriv->gpr,
			IMX8QM_CSR_PHYX1_OFFSET,
			IMX8QM_PHY_MODE_MASK,
			IMX8QM_PHY_MODE_SATA);

	/*
	 * BIT0 RXENA 1, BIT1 TXENA 0
	 * BIT12 PHY_X1_EPCS_SEL 1.
	 */
	FUNC6(imxpriv->gpr,
			IMX8QM_CSR_MISC_OFFSET,
			IMX8QM_MISC_IOB_RXENA,
			IMX8QM_MISC_IOB_RXENA);
	FUNC6(imxpriv->gpr,
			IMX8QM_CSR_MISC_OFFSET,
			IMX8QM_MISC_IOB_TXENA,
			0);
	FUNC6(imxpriv->gpr,
			IMX8QM_CSR_MISC_OFFSET,
			IMX8QM_MISC_PHYX1_EPCS_SEL,
			IMX8QM_MISC_PHYX1_EPCS_SEL);
	/*
	 * It is possible, for PCIe and SATA are sharing
	 * the same clock source, HPLL or external oscillator.
	 * When PCIe is in low power modes (L1.X or L2 etc),
	 * the clock source can be turned off. In this case,
	 * if this clock source is required to be toggling by
	 * SATA, then SATA functions will be abnormal.
	 * Set the override here to avoid it.
	 */
	FUNC6(imxpriv->gpr,
			IMX8QM_CSR_MISC_OFFSET,
			IMX8QM_MISC_CLKREQN_OUT_OVERRIDE_1 |
			IMX8QM_MISC_CLKREQN_OUT_OVERRIDE_0 |
			IMX8QM_MISC_CLKREQN_IN_OVERRIDE_1 |
			IMX8QM_MISC_CLKREQN_IN_OVERRIDE_0,
			IMX8QM_MISC_CLKREQN_OUT_OVERRIDE_1 |
			IMX8QM_MISC_CLKREQN_OUT_OVERRIDE_0 |
			IMX8QM_MISC_CLKREQN_IN_OVERRIDE_1 |
			IMX8QM_MISC_CLKREQN_IN_OVERRIDE_0);

	/* clear PHY RST, then set it */
	FUNC6(imxpriv->gpr,
			IMX8QM_CSR_SATA_OFFSET,
			IMX8QM_SATA_CTRL_EPCS_PHYRESET_N,
			0);

	FUNC6(imxpriv->gpr,
			IMX8QM_CSR_SATA_OFFSET,
			IMX8QM_SATA_CTRL_EPCS_PHYRESET_N,
			IMX8QM_SATA_CTRL_EPCS_PHYRESET_N);

	/* CTRL RST: SET -> delay 1 us -> CLEAR -> SET */
	FUNC6(imxpriv->gpr,
			IMX8QM_CSR_SATA_OFFSET,
			IMX8QM_SATA_CTRL_RESET_N,
			IMX8QM_SATA_CTRL_RESET_N);
	FUNC7(1);
	FUNC6(imxpriv->gpr,
			IMX8QM_CSR_SATA_OFFSET,
			IMX8QM_SATA_CTRL_RESET_N,
			0);
	FUNC6(imxpriv->gpr,
			IMX8QM_CSR_SATA_OFFSET,
			IMX8QM_SATA_CTRL_RESET_N,
			IMX8QM_SATA_CTRL_RESET_N);

	/* APB reset */
	FUNC6(imxpriv->gpr,
			IMX8QM_CSR_PHYX1_OFFSET,
			IMX8QM_PHY_APB_RSTN_0,
			IMX8QM_PHY_APB_RSTN_0);

	for (i = 0; i < 100; i++) {
		reg = IMX8QM_CSR_PHYX1_OFFSET +
			IMX8QM_CSR_PHYX_STTS0_OFFSET;
		FUNC5(imxpriv->gpr, reg, &val);
		val &= IMX8QM_STTS0_LANE0_TX_PLL_LOCK;
		if (val == IMX8QM_STTS0_LANE0_TX_PLL_LOCK)
			break;
		FUNC7(1);
	}

	if (val != IMX8QM_STTS0_LANE0_TX_PLL_LOCK) {
		FUNC2(dev, "TX PLL of the PHY is not locked\n");
		ret = -ENODEV;
	} else {
		FUNC10(imxpriv->imped_ratio, imxpriv->phy_base +
				IMX8QM_SATA_PHY_RX_IMPED_RATIO_OFFSET);
		FUNC10(imxpriv->imped_ratio, imxpriv->phy_base +
				IMX8QM_SATA_PHY_TX_IMPED_RATIO_OFFSET);
		reg = FUNC4(imxpriv->phy_base +
				IMX8QM_SATA_PHY_RX_IMPED_RATIO_OFFSET);
		if (FUNC8(reg != imxpriv->imped_ratio))
			FUNC3(dev, "Can't set PHY RX impedance ratio.\n");
		reg = FUNC4(imxpriv->phy_base +
				IMX8QM_SATA_PHY_TX_IMPED_RATIO_OFFSET);
		if (FUNC8(reg != imxpriv->imped_ratio))
			FUNC3(dev, "Can't set PHY TX impedance ratio.\n");
		FUNC9(50, 100);

		/*
		 * To reduce the power consumption, gate off
		 * the PHY clks
		 */
		FUNC0(imxpriv->phy_apbclk);
		FUNC0(imxpriv->phy_pclk1);
		FUNC0(imxpriv->phy_pclk0);
		return ret;
	}

	FUNC0(imxpriv->phy_apbclk);
disable_epcs_rx_clk:
	FUNC0(imxpriv->epcs_rx_clk);
disable_epcs_tx_clk:
	FUNC0(imxpriv->epcs_tx_clk);
disable_phy_pclk1:
	FUNC0(imxpriv->phy_pclk1);
disable_phy_pclk0:
	FUNC0(imxpriv->phy_pclk0);

	return ret;
}