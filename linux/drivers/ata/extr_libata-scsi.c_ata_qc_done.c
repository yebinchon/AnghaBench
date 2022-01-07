
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct ata_queued_cmd {void (* scsidone ) (struct scsi_cmnd*) ;struct scsi_cmnd* scsicmd; } ;


 int ata_qc_free (struct ata_queued_cmd*) ;

__attribute__((used)) static void ata_qc_done(struct ata_queued_cmd *qc)
{
 struct scsi_cmnd *cmd = qc->scsicmd;
 void (*done)(struct scsi_cmnd *) = qc->scsidone;

 ata_qc_free(qc);
 done(cmd);
}
