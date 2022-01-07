
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_host_priv {int nports; int phy_regulator; int ahci_regulator; int * target_pwrs; } ;


 int regulator_disable (int ) ;

void ahci_platform_disable_regulators(struct ahci_host_priv *hpriv)
{
 int i;

 for (i = 0; i < hpriv->nports; i++) {
  if (!hpriv->target_pwrs[i])
   continue;
  regulator_disable(hpriv->target_pwrs[i]);
 }

 regulator_disable(hpriv->ahci_regulator);
 regulator_disable(hpriv->phy_regulator);
}
