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
typedef  int u32 ;
struct device {scalar_t__ mmio; struct imx_ahci_priv* plat_data; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct imx_ahci_priv {int no_device; int first_time; int type; int phy_params; struct device* sata_clk; struct device* ahb_clk; struct device* gpr; struct device* sata_ref_clk; struct platform_device* ahci_pdev; } ;
struct ahci_host_priv {scalar_t__ mmio; struct imx_ahci_priv* plat_data; } ;
typedef  enum ahci_imx_type { ____Placeholder_ahci_imx_type } ahci_imx_type ;

/* Variables and functions */
 scalar_t__ AHCI_IMX53 ; 
 scalar_t__ AHCI_IMX6Q ; 
 scalar_t__ AHCI_IMX6QP ; 
 scalar_t__ AHCI_IMX8QM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONFIG_HWMON ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HOST_CAP ; 
 unsigned int HOST_CAP_SSS ; 
 scalar_t__ HOST_PORTS_IMPL ; 
 int IMX6Q_GPR13_SATA_RX_DPLL_MODE_2P_4F ; 
 int IMX6Q_GPR13_SATA_RX_LOS_LVL_SATA2M ; 
 int IMX6Q_GPR13_SATA_SPD_MODE_3P0G ; 
 scalar_t__ IMX_TIMER1MS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  ahci_imx_port_info ; 
 struct device* FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct platform_device*,struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ahci_platform_sht ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int FUNC7 (struct device*) ; 
 int FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 void* FUNC12 (struct device*,char*) ; 
 struct device* FUNC13 (struct device*,char*,struct device*,int /*<<< orphan*/ ) ; 
 struct imx_ahci_priv* FUNC14 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct device*,int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fsl_sata_ahci_groups ; 
 int /*<<< orphan*/  fsl_sata_ahci_of_thermal_ops ; 
 int /*<<< orphan*/  gpr13_props ; 
 int FUNC16 (struct device*,struct imx_ahci_priv*) ; 
 int /*<<< orphan*/  imx_ahci_of_match ; 
 int FUNC17 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int FUNC19 (struct device*) ; 
 struct of_device_id* FUNC20 (int /*<<< orphan*/ ,struct device*) ; 
 unsigned int FUNC21 (scalar_t__) ; 
 struct device* FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	const struct of_device_id *of_id;
	struct ahci_host_priv *hpriv;
	struct imx_ahci_priv *imxpriv;
	unsigned int reg_val;
	int ret;

	of_id = FUNC20(imx_ahci_of_match, dev);
	if (!of_id)
		return -EINVAL;

	imxpriv = FUNC14(dev, sizeof(*imxpriv), GFP_KERNEL);
	if (!imxpriv)
		return -ENOMEM;

	imxpriv->ahci_pdev = pdev;
	imxpriv->no_device = false;
	imxpriv->first_time = true;
	imxpriv->type = (enum ahci_imx_type)of_id->data;

	imxpriv->sata_clk = FUNC12(dev, "sata");
	if (FUNC2(imxpriv->sata_clk)) {
		FUNC9(dev, "can't get sata clock.\n");
		return FUNC3(imxpriv->sata_clk);
	}

	imxpriv->sata_ref_clk = FUNC12(dev, "sata_ref");
	if (FUNC2(imxpriv->sata_ref_clk)) {
		FUNC9(dev, "can't get sata_ref clock.\n");
		return FUNC3(imxpriv->sata_ref_clk);
	}

	imxpriv->ahb_clk = FUNC12(dev, "ahb");
	if (FUNC2(imxpriv->ahb_clk)) {
		FUNC9(dev, "can't get ahb clock.\n");
		return FUNC3(imxpriv->ahb_clk);
	}

	if (imxpriv->type == AHCI_IMX6Q || imxpriv->type == AHCI_IMX6QP) {
		u32 reg_value;

		imxpriv->gpr = FUNC22(
							"fsl,imx6q-iomuxc-gpr");
		if (FUNC2(imxpriv->gpr)) {
			FUNC9(dev,
				"failed to find fsl,imx6q-iomux-gpr regmap\n");
			return FUNC3(imxpriv->gpr);
		}

		reg_value = FUNC17(dev, gpr13_props,
						 FUNC0(gpr13_props));

		imxpriv->phy_params =
				   IMX6Q_GPR13_SATA_RX_LOS_LVL_SATA2M |
				   IMX6Q_GPR13_SATA_RX_DPLL_MODE_2P_4F |
				   IMX6Q_GPR13_SATA_SPD_MODE_3P0G |
				   reg_value;
	} else if (imxpriv->type == AHCI_IMX8QM) {
		ret =  FUNC16(dev, imxpriv);
		if (ret)
			return ret;
	}

	hpriv = FUNC4(pdev, 0);
	if (FUNC2(hpriv))
		return FUNC3(hpriv);

	hpriv->plat_data = imxpriv;

	ret = FUNC8(imxpriv->sata_clk);
	if (ret)
		return ret;

	if (imxpriv->type == AHCI_IMX53 &&
	    FUNC1(CONFIG_HWMON)) {
		/* Add the temperature monitor */
		struct device *hwmon_dev;

		hwmon_dev =
			FUNC13(dev,
							"sata_ahci",
							hpriv,
							fsl_sata_ahci_groups);
		if (FUNC2(hwmon_dev)) {
			ret = FUNC3(hwmon_dev);
			goto disable_clk;
		}
		FUNC15(hwmon_dev, 0, hwmon_dev,
					     &fsl_sata_ahci_of_thermal_ops);
		FUNC10(dev, "%s: sensor 'sata_ahci'\n", FUNC11(hwmon_dev));
	}

	ret = FUNC19(hpriv);
	if (ret)
		goto disable_clk;

	/*
	 * Configure the HWINIT bits of the HOST_CAP and HOST_PORTS_IMPL,
	 * and IP vendor specific register IMX_TIMER1MS.
	 * Configure CAP_SSS (support stagered spin up).
	 * Implement the port0.
	 * Get the ahb clock rate, and configure the TIMER1MS register.
	 */
	reg_val = FUNC21(hpriv->mmio + HOST_CAP);
	if (!(reg_val & HOST_CAP_SSS)) {
		reg_val |= HOST_CAP_SSS;
		FUNC23(reg_val, hpriv->mmio + HOST_CAP);
	}
	reg_val = FUNC21(hpriv->mmio + HOST_PORTS_IMPL);
	if (!(reg_val & 0x1)) {
		reg_val |= 0x1;
		FUNC23(reg_val, hpriv->mmio + HOST_PORTS_IMPL);
	}

	reg_val = FUNC7(imxpriv->ahb_clk) / 1000;
	FUNC23(reg_val, hpriv->mmio + IMX_TIMER1MS);

	ret = FUNC5(pdev, hpriv, &ahci_imx_port_info,
				      &ahci_platform_sht);
	if (ret)
		goto disable_sata;

	return 0;

disable_sata:
	FUNC18(hpriv);
disable_clk:
	FUNC6(imxpriv->sata_clk);
	return ret;
}