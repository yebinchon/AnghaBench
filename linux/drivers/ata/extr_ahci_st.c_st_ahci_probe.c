
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_ahci_drv_data {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct ahci_host_priv {int force_port_map; int mmio; struct st_ahci_drv_data* plat_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct ahci_host_priv*) ;
 int PTR_ERR (struct ahci_host_priv*) ;
 int ahci_platform_disable_resources (struct ahci_host_priv*) ;
 int ahci_platform_enable_resources (struct ahci_host_priv*) ;
 struct ahci_host_priv* ahci_platform_get_resources (struct platform_device*,int ) ;
 int ahci_platform_init_host (struct platform_device*,struct ahci_host_priv*,int *,int *) ;
 int ahci_platform_sht ;
 struct st_ahci_drv_data* devm_kzalloc (struct device*,int,int ) ;
 int of_property_read_u32 (int ,char*,int *) ;
 int st_ahci_configure_oob (int ) ;
 int st_ahci_port_info ;
 int st_ahci_probe_resets (struct ahci_host_priv*,struct device*) ;

__attribute__((used)) static int st_ahci_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct st_ahci_drv_data *drv_data;
 struct ahci_host_priv *hpriv;
 int err;

 drv_data = devm_kzalloc(&pdev->dev, sizeof(*drv_data), GFP_KERNEL);
 if (!drv_data)
  return -ENOMEM;

 hpriv = ahci_platform_get_resources(pdev, 0);
 if (IS_ERR(hpriv))
  return PTR_ERR(hpriv);
 hpriv->plat_data = drv_data;

 err = st_ahci_probe_resets(hpriv, &pdev->dev);
 if (err)
  return err;

 err = ahci_platform_enable_resources(hpriv);
 if (err)
  return err;

 st_ahci_configure_oob(hpriv->mmio);

 of_property_read_u32(dev->of_node,
        "ports-implemented", &hpriv->force_port_map);

 err = ahci_platform_init_host(pdev, hpriv, &st_ahci_port_info,
          &ahci_platform_sht);
 if (err) {
  ahci_platform_disable_resources(hpriv);
  return err;
 }

 return 0;
}
