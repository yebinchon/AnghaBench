
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sata_fsl_host_priv {int hcr_base; int irq; int rx_watermark; int intr_coalescing; } ;
struct platform_device {int dev; } ;
struct ata_host {struct sata_fsl_host_priv* private_data; } ;


 int ata_host_detach (struct ata_host*) ;
 int device_remove_file (int *,int *) ;
 int iounmap (int ) ;
 int irq_dispose_mapping (int ) ;
 int kfree (struct sata_fsl_host_priv*) ;
 struct ata_host* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int sata_fsl_remove(struct platform_device *ofdev)
{
 struct ata_host *host = platform_get_drvdata(ofdev);
 struct sata_fsl_host_priv *host_priv = host->private_data;

 device_remove_file(&ofdev->dev, &host_priv->intr_coalescing);
 device_remove_file(&ofdev->dev, &host_priv->rx_watermark);

 ata_host_detach(host);

 irq_dispose_mapping(host_priv->irq);
 iounmap(host_priv->hcr_base);
 kfree(host_priv);

 return 0;
}
