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
struct tegra_ahci_priv {int /*<<< orphan*/  supplies; TYPE_1__* soc; int /*<<< orphan*/  sata_clk; int /*<<< orphan*/  sata_cold_rst; int /*<<< orphan*/  sata_oob_rst; int /*<<< orphan*/  sata_rst; } ;
struct ahci_host_priv {struct tegra_ahci_priv* plat_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_supplies; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEGRA_POWERGATE_SATA ; 
 int /*<<< orphan*/  FUNC0 (struct ahci_host_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ahci_host_priv *hpriv)
{
	struct tegra_ahci_priv *tegra = hpriv->plat_data;

	FUNC0(hpriv);

	FUNC3(tegra->sata_rst);
	FUNC3(tegra->sata_oob_rst);
	FUNC3(tegra->sata_cold_rst);

	FUNC1(tegra->sata_clk);
	FUNC4(TEGRA_POWERGATE_SATA);

	FUNC2(tegra->soc->num_supplies, tegra->supplies);
}