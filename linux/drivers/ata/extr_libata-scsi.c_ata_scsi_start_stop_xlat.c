
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct scsi_cmnd {int* cmnd; int cmd_len; int result; } ;
struct ata_taskfile {int flags; int nsect; int lbah; int lbam; int lbal; int command; int device; int protocol; } ;
struct ata_queued_cmd {TYPE_2__* dev; TYPE_1__* ap; struct ata_taskfile tf; struct scsi_cmnd* scsicmd; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int flags; } ;


 int ATA_CMD_STANDBYNOW1 ;
 int ATA_CMD_VERIFY ;
 int ATA_DFLAG_LBA ;
 int ATA_FLAG_NO_HIBERNATE_SPINDOWN ;
 int ATA_FLAG_NO_POWEROFF_SPINDOWN ;
 int ATA_LBA ;
 int ATA_PROT_NODATA ;
 int ATA_TFLAG_DEVICE ;
 int ATA_TFLAG_ISADDR ;
 int ATA_TFLAG_LBA ;
 int SAM_STAT_GOOD ;
 scalar_t__ SYSTEM_POWER_OFF ;
 int ata_scsi_set_invalid_field (TYPE_2__*,struct scsi_cmnd*,int,int) ;
 scalar_t__ system_entering_hibernation () ;
 scalar_t__ system_state ;

__attribute__((used)) static unsigned int ata_scsi_start_stop_xlat(struct ata_queued_cmd *qc)
{
 struct scsi_cmnd *scmd = qc->scsicmd;
 struct ata_taskfile *tf = &qc->tf;
 const u8 *cdb = scmd->cmnd;
 u16 fp;
 u8 bp = 0xff;

 if (scmd->cmd_len < 5) {
  fp = 4;
  goto invalid_fld;
 }

 tf->flags |= ATA_TFLAG_DEVICE | ATA_TFLAG_ISADDR;
 tf->protocol = ATA_PROT_NODATA;
 if (cdb[1] & 0x1) {
  ;
 }
 if (cdb[4] & 0x2) {
  fp = 4;
  bp = 1;
  goto invalid_fld;
 }
 if (((cdb[4] >> 4) & 0xf) != 0) {
  fp = 4;
  bp = 3;
  goto invalid_fld;
 }

 if (cdb[4] & 0x1) {
  tf->nsect = 1;

  if (qc->dev->flags & ATA_DFLAG_LBA) {
   tf->flags |= ATA_TFLAG_LBA;

   tf->lbah = 0x0;
   tf->lbam = 0x0;
   tf->lbal = 0x0;
   tf->device |= ATA_LBA;
  } else {

   tf->lbal = 0x1;
   tf->lbam = 0x0;
   tf->lbah = 0x0;
  }

  tf->command = ATA_CMD_VERIFY;
 } else {



  if ((qc->ap->flags & ATA_FLAG_NO_POWEROFF_SPINDOWN) &&
      system_state == SYSTEM_POWER_OFF)
   goto skip;

  if ((qc->ap->flags & ATA_FLAG_NO_HIBERNATE_SPINDOWN) &&
       system_entering_hibernation())
   goto skip;


  tf->command = ATA_CMD_STANDBYNOW1;
 }
 return 0;

 invalid_fld:
 ata_scsi_set_invalid_field(qc->dev, scmd, fp, bp);
 return 1;
 skip:
 scmd->result = SAM_STAT_GOOD;
 return 1;
}
