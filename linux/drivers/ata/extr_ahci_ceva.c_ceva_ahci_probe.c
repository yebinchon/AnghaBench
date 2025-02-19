
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct ceva_ahci_priv {int is_cci_enabled; int * pp5c; int * pp4c; int * pp3c; int * pp2c; int flags; struct platform_device* ahci_pdev; } ;
struct ahci_host_priv {struct ceva_ahci_priv* plat_data; } ;
typedef enum dev_dma_attr { ____Placeholder_dev_dma_attr } dev_dma_attr ;


 int CEVA_FLAG_BROKEN_GEN2 ;
 int DEV_DMA_COHERENT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct ahci_host_priv*) ;
 int PTR_ERR (struct ahci_host_priv*) ;
 int ahci_ceva_port_info ;
 int ahci_ceva_setup (struct ahci_host_priv*) ;
 int ahci_platform_disable_resources (struct ahci_host_priv*) ;
 int ahci_platform_enable_resources (struct ahci_host_priv*) ;
 struct ahci_host_priv* ahci_platform_get_resources (struct platform_device*,int ) ;
 int ahci_platform_init_host (struct platform_device*,struct ahci_host_priv*,int *,int *) ;
 int ahci_platform_sht ;
 int dev_warn (struct device*,char*) ;
 int device_get_dma_attr (struct device*) ;
 struct ceva_ahci_priv* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 scalar_t__ of_property_read_u16_array (struct device_node*,char*,int *,int) ;
 scalar_t__ of_property_read_u8_array (struct device_node*,char*,int *,int) ;

__attribute__((used)) static int ceva_ahci_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct device *dev = &pdev->dev;
 struct ahci_host_priv *hpriv;
 struct ceva_ahci_priv *cevapriv;
 enum dev_dma_attr attr;
 int rc;

 cevapriv = devm_kzalloc(dev, sizeof(*cevapriv), GFP_KERNEL);
 if (!cevapriv)
  return -ENOMEM;

 cevapriv->ahci_pdev = pdev;

 hpriv = ahci_platform_get_resources(pdev, 0);
 if (IS_ERR(hpriv))
  return PTR_ERR(hpriv);

 rc = ahci_platform_enable_resources(hpriv);
 if (rc)
  return rc;

 if (of_property_read_bool(np, "ceva,broken-gen2"))
  cevapriv->flags = CEVA_FLAG_BROKEN_GEN2;


 if (of_property_read_u8_array(np, "ceva,p0-cominit-params",
     (u8 *)&cevapriv->pp2c[0], 4) < 0) {
  dev_warn(dev, "ceva,p0-cominit-params property not defined\n");
  return -EINVAL;
 }

 if (of_property_read_u8_array(np, "ceva,p1-cominit-params",
     (u8 *)&cevapriv->pp2c[1], 4) < 0) {
  dev_warn(dev, "ceva,p1-cominit-params property not defined\n");
  return -EINVAL;
 }


 if (of_property_read_u8_array(np, "ceva,p0-comwake-params",
     (u8 *)&cevapriv->pp3c[0], 4) < 0) {
  dev_warn(dev, "ceva,p0-comwake-params property not defined\n");
  return -EINVAL;
 }

 if (of_property_read_u8_array(np, "ceva,p1-comwake-params",
     (u8 *)&cevapriv->pp3c[1], 4) < 0) {
  dev_warn(dev, "ceva,p1-comwake-params property not defined\n");
  return -EINVAL;
 }


 if (of_property_read_u8_array(np, "ceva,p0-burst-params",
     (u8 *)&cevapriv->pp4c[0], 4) < 0) {
  dev_warn(dev, "ceva,p0-burst-params property not defined\n");
  return -EINVAL;
 }

 if (of_property_read_u8_array(np, "ceva,p1-burst-params",
     (u8 *)&cevapriv->pp4c[1], 4) < 0) {
  dev_warn(dev, "ceva,p1-burst-params property not defined\n");
  return -EINVAL;
 }


 if (of_property_read_u16_array(np, "ceva,p0-retry-params",
     (u16 *)&cevapriv->pp5c[0], 2) < 0) {
  dev_warn(dev, "ceva,p0-retry-params property not defined\n");
  return -EINVAL;
 }

 if (of_property_read_u16_array(np, "ceva,p1-retry-params",
     (u16 *)&cevapriv->pp5c[1], 2) < 0) {
  dev_warn(dev, "ceva,p1-retry-params property not defined\n");
  return -EINVAL;
 }





 attr = device_get_dma_attr(dev);
 cevapriv->is_cci_enabled = (attr == DEV_DMA_COHERENT);

 hpriv->plat_data = cevapriv;


 ahci_ceva_setup(hpriv);

 rc = ahci_platform_init_host(pdev, hpriv, &ahci_ceva_port_info,
     &ahci_platform_sht);
 if (rc)
  goto disable_resources;

 return 0;

disable_resources:
 ahci_platform_disable_resources(hpriv);
 return rc;
}
