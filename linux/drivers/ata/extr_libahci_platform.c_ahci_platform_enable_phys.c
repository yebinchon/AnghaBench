
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_host_priv {int nports; int * phys; } ;


 int PHY_MODE_SATA ;
 int phy_exit (int ) ;
 int phy_init (int ) ;
 int phy_power_off (int ) ;
 int phy_power_on (int ) ;
 int phy_set_mode (int ,int ) ;

__attribute__((used)) static int ahci_platform_enable_phys(struct ahci_host_priv *hpriv)
{
 int rc, i;

 for (i = 0; i < hpriv->nports; i++) {
  rc = phy_init(hpriv->phys[i]);
  if (rc)
   goto disable_phys;

  rc = phy_set_mode(hpriv->phys[i], PHY_MODE_SATA);
  if (rc) {
   phy_exit(hpriv->phys[i]);
   goto disable_phys;
  }

  rc = phy_power_on(hpriv->phys[i]);
  if (rc) {
   phy_exit(hpriv->phys[i]);
   goto disable_phys;
  }
 }

 return 0;

disable_phys:
 while (--i >= 0) {
  phy_power_off(hpriv->phys[i]);
  phy_exit(hpriv->phys[i]);
 }
 return rc;
}
