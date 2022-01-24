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
struct tegra_ahci_priv {int /*<<< orphan*/  supplies; TYPE_1__* soc; int /*<<< orphan*/  sata_clk; int /*<<< orphan*/  sata_oob_rst; int /*<<< orphan*/  sata_cold_rst; int /*<<< orphan*/  sata_rst; } ;
struct ahci_host_priv {struct tegra_ahci_priv* plat_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_supplies; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEGRA_POWERGATE_SATA ; 
 int FUNC0 (struct ahci_host_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ahci_host_priv *hpriv)
{
	struct tegra_ahci_priv *tegra = hpriv->plat_data;
	int ret;

	ret = FUNC3(tegra->soc->num_supplies,
				    tegra->supplies);
	if (ret)
		return ret;

	ret = FUNC7(TEGRA_POWERGATE_SATA,
						tegra->sata_clk,
						tegra->sata_rst);
	if (ret)
		goto disable_regulators;

	FUNC4(tegra->sata_oob_rst);
	FUNC4(tegra->sata_cold_rst);

	ret = FUNC0(hpriv);
	if (ret)
		goto disable_power;

	FUNC5(tegra->sata_cold_rst);
	FUNC5(tegra->sata_oob_rst);

	return 0;

disable_power:
	FUNC1(tegra->sata_clk);

	FUNC6(TEGRA_POWERGATE_SATA);

disable_regulators:
	FUNC2(tegra->soc->num_supplies, tegra->supplies);

	return ret;
}