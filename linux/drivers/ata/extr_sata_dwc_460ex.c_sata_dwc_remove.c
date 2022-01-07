
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sata_dwc_device {int phy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct ata_host {struct sata_dwc_device* private_data; } ;


 int ata_host_detach (struct ata_host*) ;
 int dev_dbg (struct device*,char*) ;
 struct ata_host* dev_get_drvdata (struct device*) ;
 int phy_exit (int ) ;
 int sata_dwc_dma_exit_old (struct sata_dwc_device*) ;

__attribute__((used)) static int sata_dwc_remove(struct platform_device *ofdev)
{
 struct device *dev = &ofdev->dev;
 struct ata_host *host = dev_get_drvdata(dev);
 struct sata_dwc_device *hsdev = host->private_data;

 ata_host_detach(host);

 phy_exit(hsdev->phy);






 dev_dbg(&ofdev->dev, "done\n");
 return 0;
}
