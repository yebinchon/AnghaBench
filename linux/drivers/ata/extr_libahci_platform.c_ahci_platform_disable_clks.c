
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_host_priv {scalar_t__* clks; } ;


 int AHCI_MAX_CLKS ;
 int clk_disable_unprepare (scalar_t__) ;

void ahci_platform_disable_clks(struct ahci_host_priv *hpriv)
{
 int c;

 for (c = AHCI_MAX_CLKS - 1; c >= 0; c--)
  if (hpriv->clks[c])
   clk_disable_unprepare(hpriv->clks[c]);
}
