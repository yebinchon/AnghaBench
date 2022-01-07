
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pata_icside_info {int nr_ports; int * port; int base; int mwdma_mask; int state; int irqops; int irqmask; scalar_t__ irqaddr; struct expansion_card* ec; } ;
struct expansion_card {int irq; int dev; TYPE_1__* ops; int irqmask; scalar_t__ irqaddr; } ;
struct ata_port {int * ops; int flags; int mwdma_mask; int pio_mask; } ;
struct ata_host {struct ata_port** ports; int flags; int private_data; } ;
struct TYPE_2__ {int (* irqdisable ) (struct expansion_card*,int ) ;} ;


 int ATA_FLAG_SLAVE_POSS ;
 int ATA_HOST_SIMPLEX ;
 int ATA_PIO4 ;
 int ENOMEM ;
 int ata_bmdma_interrupt ;
 int ata_host_activate (struct ata_host*,int ,int ,int ,int *) ;
 struct ata_host* ata_host_alloc (int *,int) ;
 int ecard_setirq (struct expansion_card*,int ,int ) ;
 int pata_icside_port_ops ;
 int pata_icside_setup_ioaddr (struct ata_port*,int ,struct pata_icside_info*,int ) ;
 int pata_icside_sht ;
 int stub1 (struct expansion_card*,int ) ;

__attribute__((used)) static int pata_icside_add_ports(struct pata_icside_info *info)
{
 struct expansion_card *ec = info->ec;
 struct ata_host *host;
 int i;

 if (info->irqaddr) {
  ec->irqaddr = info->irqaddr;
  ec->irqmask = info->irqmask;
 }
 if (info->irqops)
  ecard_setirq(ec, info->irqops, info->state);




 ec->ops->irqdisable(ec, ec->irq);

 host = ata_host_alloc(&ec->dev, info->nr_ports);
 if (!host)
  return -ENOMEM;

 host->private_data = info->state;
 host->flags = ATA_HOST_SIMPLEX;

 for (i = 0; i < info->nr_ports; i++) {
  struct ata_port *ap = host->ports[i];

  ap->pio_mask = ATA_PIO4;
  ap->mwdma_mask = info->mwdma_mask;
  ap->flags |= ATA_FLAG_SLAVE_POSS;
  ap->ops = &pata_icside_port_ops;

  pata_icside_setup_ioaddr(ap, info->base, info, info->port[i]);
 }

 return ata_host_activate(host, ec->irq, ata_bmdma_interrupt, 0,
     &pata_icside_sht);
}
