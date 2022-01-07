
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct scsi_cmnd {int * cmnd; } ;
struct ata_queued_cmd {struct scsi_cmnd* scsicmd; } ;


 scalar_t__ const ATA_32 ;
 unsigned int ata_scsi_pass_thru (struct ata_queued_cmd*) ;
 scalar_t__ get_unaligned_be16 (int const*) ;

__attribute__((used)) static unsigned int ata_scsi_var_len_cdb_xlat(struct ata_queued_cmd *qc)
{
 struct scsi_cmnd *scmd = qc->scsicmd;
 const u8 *cdb = scmd->cmnd;
 const u16 sa = get_unaligned_be16(&cdb[8]);





 if (sa == ATA_32)
  return ata_scsi_pass_thru(qc);


 return 1;
}
