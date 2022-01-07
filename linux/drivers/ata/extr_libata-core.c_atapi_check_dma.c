
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_queued_cmd {int nbytes; TYPE_1__* dev; struct ata_port* ap; } ;
struct ata_port {TYPE_2__* ops; } ;
struct TYPE_4__ {int (* check_atapi_dma ) (struct ata_queued_cmd*) ;} ;
struct TYPE_3__ {int horkage; } ;


 int ATA_HORKAGE_ATAPI_MOD16_DMA ;
 int stub1 (struct ata_queued_cmd*) ;
 scalar_t__ unlikely (int) ;

int atapi_check_dma(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;




 if (!(qc->dev->horkage & ATA_HORKAGE_ATAPI_MOD16_DMA) &&
     unlikely(qc->nbytes & 15))
  return 1;

 if (ap->ops->check_atapi_dma)
  return ap->ops->check_atapi_dma(qc);

 return 0;
}
