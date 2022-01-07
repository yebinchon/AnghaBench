
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ command; } ;
struct ata_queued_cmd {TYPE_2__* scsicmd; TYPE_1__ tf; struct ata_port* ap; } ;
struct ata_port {int dummy; } ;
struct TYPE_4__ {scalar_t__ sc_data_direction; } ;


 scalar_t__ ATA_CMD_PACKET ;
 scalar_t__ DMA_TO_DEVICE ;
 int ata_bmdma_start (struct ata_queued_cmd*) ;
 int ata_sff_pause (struct ata_port*) ;

__attribute__((used)) static void vt6420_bmdma_start(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 if ((qc->tf.command == ATA_CMD_PACKET) &&
     (qc->scsicmd->sc_data_direction == DMA_TO_DEVICE)) {

  ata_sff_pause(ap);
 }
 ata_bmdma_start(qc);
}
