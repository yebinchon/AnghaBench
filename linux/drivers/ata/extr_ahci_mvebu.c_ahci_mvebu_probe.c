
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct ahci_mvebu_plat_data {int (* plat_config ) (struct ahci_host_priv*) ;int flags; } ;
struct ahci_host_priv {int stop_engine; void* plat_data; int flags; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct ahci_host_priv*) ;
 int PTR_ERR (struct ahci_host_priv*) ;
 int ahci_mvebu_port_info ;
 int ahci_mvebu_stop_engine ;
 int ahci_platform_disable_resources (struct ahci_host_priv*) ;
 int ahci_platform_enable_resources (struct ahci_host_priv*) ;
 struct ahci_host_priv* ahci_platform_get_resources (struct platform_device*,int ) ;
 int ahci_platform_init_host (struct platform_device*,struct ahci_host_priv*,int *,int *) ;
 int ahci_platform_sht ;
 struct ahci_mvebu_plat_data* of_device_get_match_data (int *) ;
 int stub1 (struct ahci_host_priv*) ;

__attribute__((used)) static int ahci_mvebu_probe(struct platform_device *pdev)
{
 const struct ahci_mvebu_plat_data *pdata;
 struct ahci_host_priv *hpriv;
 int rc;

 pdata = of_device_get_match_data(&pdev->dev);
 if (!pdata)
  return -EINVAL;

 hpriv = ahci_platform_get_resources(pdev, 0);
 if (IS_ERR(hpriv))
  return PTR_ERR(hpriv);

 hpriv->flags |= pdata->flags;
 hpriv->plat_data = (void *)pdata;

 rc = ahci_platform_enable_resources(hpriv);
 if (rc)
  return rc;

 hpriv->stop_engine = ahci_mvebu_stop_engine;

 rc = pdata->plat_config(hpriv);
 if (rc)
  goto disable_resources;

 rc = ahci_platform_init_host(pdev, hpriv, &ahci_mvebu_port_info,
         &ahci_platform_sht);
 if (rc)
  goto disable_resources;

 return 0;

disable_resources:
 ahci_platform_disable_resources(hpriv);
 return rc;
}
