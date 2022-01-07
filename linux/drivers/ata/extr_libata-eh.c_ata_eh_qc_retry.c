
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int allowed; } ;
struct ata_queued_cmd {int err_mask; struct scsi_cmnd* scsicmd; } ;


 int __ata_eh_qc_complete (struct ata_queued_cmd*) ;

void ata_eh_qc_retry(struct ata_queued_cmd *qc)
{
 struct scsi_cmnd *scmd = qc->scsicmd;
 if (!qc->err_mask)
  scmd->allowed++;
 __ata_eh_qc_complete(qc);
}
