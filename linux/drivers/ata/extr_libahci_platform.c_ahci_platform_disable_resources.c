
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_host_priv {int rsts; } ;


 int ahci_platform_disable_clks (struct ahci_host_priv*) ;
 int ahci_platform_disable_phys (struct ahci_host_priv*) ;
 int ahci_platform_disable_regulators (struct ahci_host_priv*) ;
 int reset_control_assert (int ) ;

void ahci_platform_disable_resources(struct ahci_host_priv *hpriv)
{
 ahci_platform_disable_phys(hpriv);

 reset_control_assert(hpriv->rsts);

 ahci_platform_disable_clks(hpriv);

 ahci_platform_disable_regulators(hpriv);
}
