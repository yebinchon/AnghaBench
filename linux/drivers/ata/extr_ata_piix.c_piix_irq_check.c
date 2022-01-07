
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bmdma_addr; } ;
struct ata_port {TYPE_2__* ops; TYPE_1__ ioaddr; } ;
struct TYPE_4__ {int (* bmdma_status ) (struct ata_port*) ;} ;


 int ATA_DMA_INTR ;
 int stub1 (struct ata_port*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool piix_irq_check(struct ata_port *ap)
{
 if (unlikely(!ap->ioaddr.bmdma_addr))
  return 0;

 return ap->ops->bmdma_status(ap) & ATA_DMA_INTR;
}
