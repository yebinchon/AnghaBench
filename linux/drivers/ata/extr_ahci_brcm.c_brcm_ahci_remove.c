
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct brcm_ahci_priv {int dummy; } ;
struct ata_host {struct ahci_host_priv* private_data; } ;
struct ahci_host_priv {struct brcm_ahci_priv* plat_data; } ;


 int ata_platform_remove_one (struct platform_device*) ;
 int brcm_sata_phys_disable (struct brcm_ahci_priv*) ;
 struct ata_host* dev_get_drvdata (int *) ;

__attribute__((used)) static int brcm_ahci_remove(struct platform_device *pdev)
{
 struct ata_host *host = dev_get_drvdata(&pdev->dev);
 struct ahci_host_priv *hpriv = host->private_data;
 struct brcm_ahci_priv *priv = hpriv->plat_data;
 int ret;

 ret = ata_platform_remove_one(pdev);
 if (ret)
  return ret;

 brcm_sata_phys_disable(priv);

 return 0;
}
