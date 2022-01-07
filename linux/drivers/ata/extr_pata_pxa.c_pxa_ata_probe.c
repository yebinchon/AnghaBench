
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int num_resources; int dev; } ;
struct pata_pxa_pdata {int reg_shift; int irq_flags; } ;
struct pata_pxa_data {int dma_chan; } ;
struct dma_slave_config {int src_maxburst; int dst_maxburst; int dst_addr; int src_addr; void* dst_addr_width; void* src_addr_width; } ;
struct TYPE_2__ {void* cmd_addr; void* command_addr; void* status_addr; void* device_addr; void* lbah_addr; void* lbam_addr; void* lbal_addr; void* nsect_addr; void* feature_addr; void* error_addr; void* data_addr; void* ctl_addr; void* altstatus_addr; void* bmdma_addr; } ;
struct ata_port {struct pata_pxa_data* private_data; TYPE_1__ ioaddr; int mwdma_mask; int pio_mask; int * ops; } ;
struct ata_host {struct ata_port** ports; } ;
typedef int config ;


 int ATA_MWDMA2 ;
 int ATA_PIO4 ;
 int ATA_REG_CMD ;
 int ATA_REG_DATA ;
 int ATA_REG_DEVICE ;
 int ATA_REG_ERR ;
 int ATA_REG_FEATURE ;
 int ATA_REG_LBAH ;
 int ATA_REG_LBAL ;
 int ATA_REG_LBAM ;
 int ATA_REG_NSECT ;
 int ATA_REG_STATUS ;
 void* DMA_SLAVE_BUSWIDTH_2_BYTES ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_DMA ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int ata_host_activate (struct ata_host*,int ,int ,int ,int *) ;
 struct ata_host* ata_host_alloc (int *,int) ;
 int ata_sff_interrupt ;
 int dev_err (int *,char*,...) ;
 struct pata_pxa_pdata* dev_get_platdata (int *) ;
 void* devm_ioremap (int *,int ,int ) ;
 struct pata_pxa_data* devm_kzalloc (int *,int,int ) ;
 int dma_release_channel (int ) ;
 int dma_request_slave_channel (int *,char*) ;
 int dmaengine_slave_config (int ,struct dma_slave_config*) ;
 int memset (struct dma_slave_config*,int ,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int pxa_ata_port_ops ;
 int pxa_ata_sht ;
 int resource_size (struct resource*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int pxa_ata_probe(struct platform_device *pdev)
{
 struct ata_host *host;
 struct ata_port *ap;
 struct pata_pxa_data *data;
 struct resource *cmd_res;
 struct resource *ctl_res;
 struct resource *dma_res;
 struct resource *irq_res;
 struct pata_pxa_pdata *pdata = dev_get_platdata(&pdev->dev);
 struct dma_slave_config config;
 int ret = 0;
 if (pdev->num_resources != 4) {
  dev_err(&pdev->dev, "invalid number of resources\n");
  return -EINVAL;
 }




 cmd_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (unlikely(cmd_res == ((void*)0)))
  return -EINVAL;




 ctl_res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 if (unlikely(ctl_res == ((void*)0)))
  return -EINVAL;




 dma_res = platform_get_resource(pdev, IORESOURCE_DMA, 0);
 if (unlikely(dma_res == ((void*)0)))
  return -EINVAL;




 irq_res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (unlikely(irq_res == ((void*)0)))
  return -EINVAL;




 host = ata_host_alloc(&pdev->dev, 1);
 if (!host)
  return -ENOMEM;

 ap = host->ports[0];
 ap->ops = &pxa_ata_port_ops;
 ap->pio_mask = ATA_PIO4;
 ap->mwdma_mask = ATA_MWDMA2;

 ap->ioaddr.cmd_addr = devm_ioremap(&pdev->dev, cmd_res->start,
      resource_size(cmd_res));
 ap->ioaddr.ctl_addr = devm_ioremap(&pdev->dev, ctl_res->start,
      resource_size(ctl_res));
 ap->ioaddr.bmdma_addr = devm_ioremap(&pdev->dev, dma_res->start,
      resource_size(dma_res));




 ap->ioaddr.altstatus_addr = ap->ioaddr.ctl_addr;
 ap->ioaddr.data_addr = ap->ioaddr.cmd_addr +
     (ATA_REG_DATA << pdata->reg_shift);
 ap->ioaddr.error_addr = ap->ioaddr.cmd_addr +
     (ATA_REG_ERR << pdata->reg_shift);
 ap->ioaddr.feature_addr = ap->ioaddr.cmd_addr +
     (ATA_REG_FEATURE << pdata->reg_shift);
 ap->ioaddr.nsect_addr = ap->ioaddr.cmd_addr +
     (ATA_REG_NSECT << pdata->reg_shift);
 ap->ioaddr.lbal_addr = ap->ioaddr.cmd_addr +
     (ATA_REG_LBAL << pdata->reg_shift);
 ap->ioaddr.lbam_addr = ap->ioaddr.cmd_addr +
     (ATA_REG_LBAM << pdata->reg_shift);
 ap->ioaddr.lbah_addr = ap->ioaddr.cmd_addr +
     (ATA_REG_LBAH << pdata->reg_shift);
 ap->ioaddr.device_addr = ap->ioaddr.cmd_addr +
     (ATA_REG_DEVICE << pdata->reg_shift);
 ap->ioaddr.status_addr = ap->ioaddr.cmd_addr +
     (ATA_REG_STATUS << pdata->reg_shift);
 ap->ioaddr.command_addr = ap->ioaddr.cmd_addr +
     (ATA_REG_CMD << pdata->reg_shift);




 data = devm_kzalloc(&pdev->dev, sizeof(struct pata_pxa_data),
        GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 ap->private_data = data;

 memset(&config, 0, sizeof(config));
 config.src_addr_width = DMA_SLAVE_BUSWIDTH_2_BYTES;
 config.dst_addr_width = DMA_SLAVE_BUSWIDTH_2_BYTES;
 config.src_addr = dma_res->start;
 config.dst_addr = dma_res->start;
 config.src_maxburst = 32;
 config.dst_maxburst = 32;




 data->dma_chan =
  dma_request_slave_channel(&pdev->dev, "data");
 if (!data->dma_chan)
  return -EBUSY;
 ret = dmaengine_slave_config(data->dma_chan, &config);
 if (ret < 0) {
  dev_err(&pdev->dev, "dma configuration failed: %d\n", ret);
  return ret;
 }




 ret = ata_host_activate(host, irq_res->start, ata_sff_interrupt,
    pdata->irq_flags, &pxa_ata_sht);
 if (ret)
  dma_release_channel(data->dma_chan);

 return ret;
}
