
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_host {struct ahci_host_priv* private_data; } ;
struct ahci_host_priv {int dummy; } ;


 int tegra_ahci_controller_deinit (struct ahci_host_priv*) ;

__attribute__((used)) static void tegra_ahci_host_stop(struct ata_host *host)
{
 struct ahci_host_priv *hpriv = host->private_data;

 tegra_ahci_controller_deinit(hpriv);
}
