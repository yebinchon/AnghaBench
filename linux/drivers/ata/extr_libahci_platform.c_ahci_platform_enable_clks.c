
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_host_priv {scalar_t__* clks; } ;


 int AHCI_MAX_CLKS ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;

int ahci_platform_enable_clks(struct ahci_host_priv *hpriv)
{
 int c, rc;

 for (c = 0; c < AHCI_MAX_CLKS && hpriv->clks[c]; c++) {
  rc = clk_prepare_enable(hpriv->clks[c]);
  if (rc)
   goto disable_unprepare_clk;
 }
 return 0;

disable_unprepare_clk:
 while (--c >= 0)
  clk_disable_unprepare(hpriv->clks[c]);
 return rc;
}
