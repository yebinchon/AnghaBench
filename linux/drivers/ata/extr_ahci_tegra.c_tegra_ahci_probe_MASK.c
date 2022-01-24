#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tegra_ahci_priv {TYPE_2__* supplies; TYPE_1__* soc; struct ahci_host_priv* sata_clk; struct ahci_host_priv* sata_cold_rst; struct ahci_host_priv* sata_oob_rst; struct ahci_host_priv* sata_rst; struct ahci_host_priv* sata_aux_regs; struct ahci_host_priv* sata_regs; struct platform_device* pdev; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ahci_host_priv {struct tegra_ahci_priv* plat_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  supply; } ;
struct TYPE_4__ {unsigned int num_supplies; int /*<<< orphan*/ * supply_names; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct ahci_host_priv*) ; 
 int FUNC1 (struct ahci_host_priv*) ; 
 struct ahci_host_priv* FUNC2 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct platform_device*,struct ahci_host_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ahci_platform_sht ; 
 int /*<<< orphan*/  ahci_tegra_port_info ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct ahci_host_priv* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,struct resource*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,unsigned int,int,int /*<<< orphan*/ ) ; 
 struct tegra_ahci_priv* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,unsigned int,TYPE_2__*) ; 
 void* FUNC10 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ahci_host_priv*) ; 
 int FUNC14 (struct ahci_host_priv*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct ahci_host_priv *hpriv;
	struct tegra_ahci_priv *tegra;
	struct resource *res;
	int ret;
	unsigned int i;

	hpriv = FUNC2(pdev, 0);
	if (FUNC0(hpriv))
		return FUNC1(hpriv);

	tegra = FUNC8(&pdev->dev, sizeof(*tegra), GFP_KERNEL);
	if (!tegra)
		return -ENOMEM;

	hpriv->plat_data = tegra;

	tegra->pdev = pdev;
	tegra->soc = FUNC11(&pdev->dev);

	res = FUNC12(pdev, IORESOURCE_MEM, 1);
	tegra->sata_regs = FUNC6(&pdev->dev, res);
	if (FUNC0(tegra->sata_regs))
		return FUNC1(tegra->sata_regs);

	/*
	 * AUX registers is optional.
	 */
	res = FUNC12(pdev, IORESOURCE_MEM, 2);
	if (res) {
		tegra->sata_aux_regs = FUNC6(&pdev->dev, res);
		if (FUNC0(tegra->sata_aux_regs))
			return FUNC1(tegra->sata_aux_regs);
	}

	tegra->sata_rst = FUNC10(&pdev->dev, "sata");
	if (FUNC0(tegra->sata_rst)) {
		FUNC4(&pdev->dev, "Failed to get sata reset\n");
		return FUNC1(tegra->sata_rst);
	}

	tegra->sata_oob_rst = FUNC10(&pdev->dev, "sata-oob");
	if (FUNC0(tegra->sata_oob_rst)) {
		FUNC4(&pdev->dev, "Failed to get sata-oob reset\n");
		return FUNC1(tegra->sata_oob_rst);
	}

	tegra->sata_cold_rst = FUNC10(&pdev->dev, "sata-cold");
	if (FUNC0(tegra->sata_cold_rst)) {
		FUNC4(&pdev->dev, "Failed to get sata-cold reset\n");
		return FUNC1(tegra->sata_cold_rst);
	}

	tegra->sata_clk = FUNC5(&pdev->dev, "sata");
	if (FUNC0(tegra->sata_clk)) {
		FUNC4(&pdev->dev, "Failed to get sata clock\n");
		return FUNC1(tegra->sata_clk);
	}

	tegra->supplies = FUNC7(&pdev->dev,
				       tegra->soc->num_supplies,
				       sizeof(*tegra->supplies), GFP_KERNEL);
	if (!tegra->supplies)
		return -ENOMEM;

	for (i = 0; i < tegra->soc->num_supplies; i++)
		tegra->supplies[i].supply = tegra->soc->supply_names[i];

	ret = FUNC9(&pdev->dev,
				      tegra->soc->num_supplies,
				      tegra->supplies);
	if (ret) {
		FUNC4(&pdev->dev, "Failed to get regulators\n");
		return ret;
	}

	ret = FUNC14(hpriv);
	if (ret)
		return ret;

	ret = FUNC3(pdev, hpriv, &ahci_tegra_port_info,
				      &ahci_platform_sht);
	if (ret)
		goto deinit_controller;

	return 0;

deinit_controller:
	FUNC13(hpriv);

	return ret;
}