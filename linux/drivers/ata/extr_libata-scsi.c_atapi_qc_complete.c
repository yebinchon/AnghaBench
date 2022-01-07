
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_cmnd {int* cmnd; void* result; } ;
struct ata_queued_cmd {unsigned int err_mask; int flags; scalar_t__* cdb; struct scsi_cmnd* scsicmd; TYPE_4__* dev; TYPE_2__* ap; } ;
struct TYPE_8__ {TYPE_3__* sdev; } ;
struct TYPE_7__ {scalar_t__ locked; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {scalar_t__ error_handler; } ;


 unsigned int AC_ERR_DEV ;
 scalar_t__ ALLOW_MEDIUM_REMOVAL ;
 int ATA_QCFLAG_SENSE_VALID ;
 int INQUIRY ;
 void* SAM_STAT_CHECK_CONDITION ;
 void* SAM_STAT_GOOD ;
 int VPRINTK (char*,unsigned int) ;
 int ata_gen_passthru_sense (struct ata_queued_cmd*) ;
 int ata_qc_done (struct ata_queued_cmd*) ;
 int atapi_fixup_inquiry (struct scsi_cmnd*) ;
 int atapi_request_sense (struct ata_queued_cmd*) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static void atapi_qc_complete(struct ata_queued_cmd *qc)
{
 struct scsi_cmnd *cmd = qc->scsicmd;
 unsigned int err_mask = qc->err_mask;

 VPRINTK("ENTER, err_mask 0x%X\n", err_mask);


 if (unlikely(qc->ap->ops->error_handler &&
       (err_mask || qc->flags & ATA_QCFLAG_SENSE_VALID))) {

  if (!(qc->flags & ATA_QCFLAG_SENSE_VALID)) {





   ata_gen_passthru_sense(qc);
  }
  if (qc->cdb[0] == ALLOW_MEDIUM_REMOVAL && qc->dev->sdev)
   qc->dev->sdev->locked = 0;

  qc->scsicmd->result = SAM_STAT_CHECK_CONDITION;
  ata_qc_done(qc);
  return;
 }


 if (unlikely(err_mask & AC_ERR_DEV)) {
  cmd->result = SAM_STAT_CHECK_CONDITION;
  atapi_request_sense(qc);
  return;
 } else if (unlikely(err_mask)) {





  ata_gen_passthru_sense(qc);
 } else {
  if (cmd->cmnd[0] == INQUIRY && (cmd->cmnd[1] & 0x03) == 0)
   atapi_fixup_inquiry(cmd);
  cmd->result = SAM_STAT_GOOD;
 }

 ata_qc_done(qc);
}
