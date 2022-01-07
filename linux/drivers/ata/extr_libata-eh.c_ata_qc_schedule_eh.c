
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_queued_cmd {TYPE_2__* scsicmd; int flags; struct ata_port* ap; } ;
struct ata_port {TYPE_1__* ops; } ;
struct TYPE_4__ {int request; } ;
struct TYPE_3__ {int error_handler; } ;


 int ATA_QCFLAG_FAILED ;
 int WARN_ON (int) ;
 int ata_eh_set_pending (struct ata_port*,int) ;
 int blk_abort_request (int ) ;

void ata_qc_schedule_eh(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;

 WARN_ON(!ap->ops->error_handler);

 qc->flags |= ATA_QCFLAG_FAILED;
 ata_eh_set_pending(ap, 1);






 blk_abort_request(qc->scsicmd->request);
}
