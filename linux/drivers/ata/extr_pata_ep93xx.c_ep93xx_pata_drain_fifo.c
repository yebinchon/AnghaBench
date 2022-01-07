
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ep93xx_pata_data {int dummy; } ;
struct ata_queued_cmd {scalar_t__ dma_dir; struct ata_port* ap; } ;
struct ata_port {TYPE_2__* ops; TYPE_1__* host; } ;
struct TYPE_4__ {int (* sff_check_status ) (struct ata_port*) ;} ;
struct TYPE_3__ {struct ep93xx_pata_data* private_data; } ;


 int ATA_DRQ ;
 scalar_t__ DMA_TO_DEVICE ;
 int IDECTRL_ADDR_DATA ;
 int ata_port_dbg (struct ata_port*,char*,int) ;
 int ep93xx_pata_read_reg (struct ep93xx_pata_data*,int ) ;
 int stub1 (struct ata_port*) ;

__attribute__((used)) static void ep93xx_pata_drain_fifo(struct ata_queued_cmd *qc)
{
 int count;
 struct ata_port *ap;
 struct ep93xx_pata_data *drv_data;


 if (qc == ((void*)0) || qc->dma_dir == DMA_TO_DEVICE)
  return;

 ap = qc->ap;
 drv_data = ap->host->private_data;

 for (count = 0; (ap->ops->sff_check_status(ap) & ATA_DRQ)
       && count < 65536; count += 2)
  ep93xx_pata_read_reg(drv_data, IDECTRL_ADDR_DATA);


 if (count)
  ata_port_dbg(ap, "drained %d bytes to clear DRQ.\n", count);

}
