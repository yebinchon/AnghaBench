
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct ahci_host_priv {int flags; int mmio; int start_engine; } ;


 int AHCI_HFLAG_32BIT_ONLY ;
 int AHCI_HFLAG_NO_MSI ;
 int AHCI_HFLAG_NO_PMP ;
 int AHCI_HFLAG_YES_NCQ ;
 int AHCI_PLATFORM_GET_RESETS ;
 scalar_t__ IS_ERR (struct ahci_host_priv*) ;
 int PTR_ERR (struct ahci_host_priv*) ;
 int ahci_platform_disable_resources (struct ahci_host_priv*) ;
 int ahci_platform_enable_resources (struct ahci_host_priv*) ;
 struct ahci_host_priv* ahci_platform_get_resources (struct platform_device*,int ) ;
 int ahci_platform_init_host (struct platform_device*,struct ahci_host_priv*,int *,int *) ;
 int ahci_platform_sht ;
 int ahci_sunxi_phy_init (struct device*,int ) ;
 int ahci_sunxi_port_info ;
 int ahci_sunxi_start_engine ;
 int enable_pmp ;

__attribute__((used)) static int ahci_sunxi_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct ahci_host_priv *hpriv;
 int rc;

 hpriv = ahci_platform_get_resources(pdev, AHCI_PLATFORM_GET_RESETS);
 if (IS_ERR(hpriv))
  return PTR_ERR(hpriv);

 hpriv->start_engine = ahci_sunxi_start_engine;

 rc = ahci_platform_enable_resources(hpriv);
 if (rc)
  return rc;

 rc = ahci_sunxi_phy_init(dev, hpriv->mmio);
 if (rc)
  goto disable_resources;

 hpriv->flags = AHCI_HFLAG_32BIT_ONLY | AHCI_HFLAG_NO_MSI |
         AHCI_HFLAG_YES_NCQ;






 if (!enable_pmp)
  hpriv->flags |= AHCI_HFLAG_NO_PMP;

 rc = ahci_platform_init_host(pdev, hpriv, &ahci_sunxi_port_info,
         &ahci_platform_sht);
 if (rc)
  goto disable_resources;

 return 0;

disable_resources:
 ahci_platform_disable_resources(hpriv);
 return rc;
}
