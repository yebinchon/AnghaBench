
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; } ;
struct ixp4xx_pata_data {int cs1_bits; int * cs1_cfg; int cs0_bits; int * cs0_cfg; void* cs1; void* cs0; } ;
struct ata_port {int flags; int pio_mask; int * ops; } ;
struct ata_host {struct ata_port** ports; } ;


 int ATA_FLAG_NO_ATAPI ;
 int ATA_PIO4 ;
 int DMA_BIT_MASK (int) ;
 int DRV_VERSION ;
 int EINVAL ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 int IRQ_TYPE_EDGE_RISING ;
 int ata_host_activate (struct ata_host*,unsigned int,int ,int ,int *) ;
 struct ata_host* ata_host_alloc (int *,int) ;
 int ata_print_version_once (int *,int ) ;
 int ata_sff_interrupt ;
 struct ixp4xx_pata_data* dev_get_platdata (int *) ;
 void* devm_ioremap (int *,int ,int) ;
 int dma_set_coherent_mask (int *,int ) ;
 int irq_set_irq_type (unsigned int,int ) ;
 int ixp4xx_port_ops ;
 int ixp4xx_setup_port (struct ata_port*,struct ixp4xx_pata_data*,int ,int ) ;
 int ixp4xx_sht ;
 unsigned int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;

__attribute__((used)) static int ixp4xx_pata_probe(struct platform_device *pdev)
{
 unsigned int irq;
 struct resource *cs0, *cs1;
 struct ata_host *host;
 struct ata_port *ap;
 struct ixp4xx_pata_data *data = dev_get_platdata(&pdev->dev);
 int ret;

 cs0 = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 cs1 = platform_get_resource(pdev, IORESOURCE_MEM, 1);

 if (!cs0 || !cs1)
  return -EINVAL;


 host = ata_host_alloc(&pdev->dev, 1);
 if (!host)
  return -ENOMEM;


 ret = dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(32));
 if (ret)
  return ret;

 data->cs0 = devm_ioremap(&pdev->dev, cs0->start, 0x1000);
 data->cs1 = devm_ioremap(&pdev->dev, cs1->start, 0x1000);

 if (!data->cs0 || !data->cs1)
  return -ENOMEM;

 irq = platform_get_irq(pdev, 0);
 if (irq)
  irq_set_irq_type(irq, IRQ_TYPE_EDGE_RISING);


 *data->cs0_cfg = data->cs0_bits;
 *data->cs1_cfg = data->cs1_bits;

 ap = host->ports[0];

 ap->ops = &ixp4xx_port_ops;
 ap->pio_mask = ATA_PIO4;
 ap->flags |= ATA_FLAG_NO_ATAPI;

 ixp4xx_setup_port(ap, data, cs0->start, cs1->start);

 ata_print_version_once(&pdev->dev, DRV_VERSION);


 return ata_host_activate(host, irq, ata_sff_interrupt, 0, &ixp4xx_sht);
}
