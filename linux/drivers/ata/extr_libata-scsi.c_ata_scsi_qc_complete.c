
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct scsi_cmnd {int* cmnd; int result; } ;
struct ata_queued_cmd {scalar_t__ err_mask; int flags; int result_tf; struct scsi_cmnd* scsicmd; struct ata_port* ap; } ;
struct ata_port {int print_id; TYPE_1__* ops; } ;
struct TYPE_2__ {int error_handler; } ;


 int ATA_12 ;
 int ATA_16 ;
 int ATA_QCFLAG_SENSE_VALID ;
 int SAM_STAT_CHECK_CONDITION ;
 int SAM_STAT_GOOD ;
 int ata_dump_status (int ,int *) ;
 int ata_gen_ata_sense (struct ata_queued_cmd*) ;
 int ata_gen_passthru_sense (struct ata_queued_cmd*) ;
 int ata_qc_done (struct ata_queued_cmd*) ;

__attribute__((used)) static void ata_scsi_qc_complete(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct scsi_cmnd *cmd = qc->scsicmd;
 u8 *cdb = cmd->cmnd;
 int need_sense = (qc->err_mask != 0);
 if (((cdb[0] == ATA_16) || (cdb[0] == ATA_12)) &&
     ((cdb[2] & 0x20) || need_sense))
  ata_gen_passthru_sense(qc);
 else if (qc->flags & ATA_QCFLAG_SENSE_VALID)
  cmd->result = SAM_STAT_CHECK_CONDITION;
 else if (need_sense)
  ata_gen_ata_sense(qc);
 else
  cmd->result = SAM_STAT_GOOD;

 if (need_sense && !ap->ops->error_handler)
  ata_dump_status(ap->print_id, &qc->result_tf);

 ata_qc_done(qc);
}
