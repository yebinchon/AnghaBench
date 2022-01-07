
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_ahci_priv {int supplies; TYPE_1__* soc; int sata_clk; int sata_oob_rst; int sata_cold_rst; int sata_rst; } ;
struct ahci_host_priv {struct tegra_ahci_priv* plat_data; } ;
struct TYPE_2__ {int num_supplies; } ;


 int TEGRA_POWERGATE_SATA ;
 int ahci_platform_enable_resources (struct ahci_host_priv*) ;
 int clk_disable_unprepare (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int tegra_powergate_power_off (int ) ;
 int tegra_powergate_sequence_power_up (int ,int ,int ) ;

__attribute__((used)) static int tegra_ahci_power_on(struct ahci_host_priv *hpriv)
{
 struct tegra_ahci_priv *tegra = hpriv->plat_data;
 int ret;

 ret = regulator_bulk_enable(tegra->soc->num_supplies,
        tegra->supplies);
 if (ret)
  return ret;

 ret = tegra_powergate_sequence_power_up(TEGRA_POWERGATE_SATA,
      tegra->sata_clk,
      tegra->sata_rst);
 if (ret)
  goto disable_regulators;

 reset_control_assert(tegra->sata_oob_rst);
 reset_control_assert(tegra->sata_cold_rst);

 ret = ahci_platform_enable_resources(hpriv);
 if (ret)
  goto disable_power;

 reset_control_deassert(tegra->sata_cold_rst);
 reset_control_deassert(tegra->sata_oob_rst);

 return 0;

disable_power:
 clk_disable_unprepare(tegra->sata_clk);

 tegra_powergate_power_off(TEGRA_POWERGATE_SATA);

disable_regulators:
 regulator_bulk_disable(tegra->soc->num_supplies, tegra->supplies);

 return ret;
}
