
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* request; } ;
struct ata_queued_cmd {int flags; int n_elem; int sg; int (* scsidone ) (struct scsi_cmnd*) ;struct scsi_cmnd* scsicmd; } ;
struct ata_device {int dummy; } ;
struct TYPE_2__ {int rq_flags; int tag; } ;


 int ATA_QCFLAG_QUIET ;
 int DID_OK ;
 int QUEUE_FULL ;
 int RQF_QUIET ;
 struct ata_queued_cmd* ata_qc_new_init (struct ata_device*,int ) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static struct ata_queued_cmd *ata_scsi_qc_new(struct ata_device *dev,
           struct scsi_cmnd *cmd)
{
 struct ata_queued_cmd *qc;

 qc = ata_qc_new_init(dev, cmd->request->tag);
 if (qc) {
  qc->scsicmd = cmd;
  qc->scsidone = cmd->scsi_done;

  qc->sg = scsi_sglist(cmd);
  qc->n_elem = scsi_sg_count(cmd);

  if (cmd->request->rq_flags & RQF_QUIET)
   qc->flags |= ATA_QCFLAG_QUIET;
 } else {
  cmd->result = (DID_OK << 16) | (QUEUE_FULL << 1);
  cmd->scsi_done(cmd);
 }

 return qc;
}
