
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct ahci_host_priv {int dummy; } ;


 scalar_t__ IS_ERR (struct ahci_host_priv*) ;
 int PTR_ERR (struct ahci_host_priv*) ;
 int ahci_dm816_phy_init (struct ahci_host_priv*,struct device*) ;
 int ahci_dm816_platform_sht ;
 int ahci_dm816_port_info ;
 int ahci_platform_disable_resources (struct ahci_host_priv*) ;
 int ahci_platform_enable_resources (struct ahci_host_priv*) ;
 struct ahci_host_priv* ahci_platform_get_resources (struct platform_device*,int ) ;
 int ahci_platform_init_host (struct platform_device*,struct ahci_host_priv*,int *,int *) ;

__attribute__((used)) static int ahci_dm816_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct ahci_host_priv *hpriv;
 int rc;

 hpriv = ahci_platform_get_resources(pdev, 0);
 if (IS_ERR(hpriv))
  return PTR_ERR(hpriv);

 rc = ahci_platform_enable_resources(hpriv);
 if (rc)
  return rc;

 rc = ahci_dm816_phy_init(hpriv, dev);
 if (rc)
  goto disable_resources;

 rc = ahci_platform_init_host(pdev, hpriv,
         &ahci_dm816_port_info,
         &ahci_dm816_platform_sht);
 if (rc)
  goto disable_resources;

 return 0;

disable_resources:
 ahci_platform_disable_resources(hpriv);

 return rc;
}
