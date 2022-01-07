
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sata_dwc_device_port {int chan; struct sata_dwc_device* hsdev; } ;
struct sata_dwc_device {struct device* dev; } ;
struct device {int of_node; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 int dma_request_chan (struct device*,char*) ;
 int of_find_property (int ,char*,int *) ;
 int sata_dwc_dma_get_channel_old (struct sata_dwc_device_port*) ;

__attribute__((used)) static int sata_dwc_dma_get_channel(struct sata_dwc_device_port *hsdevp)
{
 struct sata_dwc_device *hsdev = hsdevp->hsdev;
 struct device *dev = hsdev->dev;






 hsdevp->chan = dma_request_chan(dev, "sata-dma");
 if (IS_ERR(hsdevp->chan)) {
  dev_err(dev, "failed to allocate dma channel: %ld\n",
   PTR_ERR(hsdevp->chan));
  return PTR_ERR(hsdevp->chan);
 }

 return 0;
}
