
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_ahci_priv {int supplies; TYPE_1__* soc; int sata_clk; int sata_cold_rst; int sata_oob_rst; int sata_rst; } ;
struct ahci_host_priv {struct tegra_ahci_priv* plat_data; } ;
struct TYPE_2__ {int num_supplies; } ;


 int TEGRA_POWERGATE_SATA ;
 int ahci_platform_disable_resources (struct ahci_host_priv*) ;
 int clk_disable_unprepare (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int reset_control_assert (int ) ;
 int tegra_powergate_power_off (int ) ;

__attribute__((used)) static void tegra_ahci_power_off(struct ahci_host_priv *hpriv)
{
 struct tegra_ahci_priv *tegra = hpriv->plat_data;

 ahci_platform_disable_resources(hpriv);

 reset_control_assert(tegra->sata_rst);
 reset_control_assert(tegra->sata_oob_rst);
 reset_control_assert(tegra->sata_cold_rst);

 clk_disable_unprepare(tegra->sata_clk);
 tegra_powergate_power_off(TEGRA_POWERGATE_SATA);

 regulator_bulk_disable(tegra->soc->num_supplies, tegra->supplies);
}
