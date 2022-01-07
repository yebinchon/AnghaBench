
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_host_priv {int nports; int * phys; } ;


 int phy_exit (int ) ;
 int phy_power_off (int ) ;

__attribute__((used)) static void ahci_platform_disable_phys(struct ahci_host_priv *hpriv)
{
 int i;

 for (i = 0; i < hpriv->nports; i++) {
  phy_power_off(hpriv->phys[i]);
  phy_exit(hpriv->phys[i]);
 }
}
