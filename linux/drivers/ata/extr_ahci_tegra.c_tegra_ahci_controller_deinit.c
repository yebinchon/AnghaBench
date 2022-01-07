
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_host_priv {int dummy; } ;


 int tegra_ahci_power_off (struct ahci_host_priv*) ;

__attribute__((used)) static void tegra_ahci_controller_deinit(struct ahci_host_priv *hpriv)
{
 tegra_ahci_power_off(hpriv);
}
