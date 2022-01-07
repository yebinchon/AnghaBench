
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ahci_host_priv {int nports; scalar_t__* target_pwrs; scalar_t__* clks; scalar_t__ got_runtime_pm; } ;


 int AHCI_MAX_CLKS ;
 int clk_put (scalar_t__) ;
 int kfree (scalar_t__*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int regulator_put (scalar_t__) ;

__attribute__((used)) static void ahci_platform_put_resources(struct device *dev, void *res)
{
 struct ahci_host_priv *hpriv = res;
 int c;

 if (hpriv->got_runtime_pm) {
  pm_runtime_put_sync(dev);
  pm_runtime_disable(dev);
 }

 for (c = 0; c < AHCI_MAX_CLKS && hpriv->clks[c]; c++)
  clk_put(hpriv->clks[c]);





 for (c = 0; c < hpriv->nports; c++)
  if (hpriv->target_pwrs && hpriv->target_pwrs[c])
   regulator_put(hpriv->target_pwrs[c]);

 kfree(hpriv->target_pwrs);
}
