
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_cmnd {int result; int sense_buffer; } ;
struct ata_device {int flags; } ;


 int ATA_DFLAG_D_SENSE ;
 int DRIVER_SENSE ;
 int SAM_STAT_CHECK_CONDITION ;
 int scsi_build_sense_buffer (int,int ,int ,int ,int ) ;

void ata_scsi_set_sense(struct ata_device *dev, struct scsi_cmnd *cmd,
   u8 sk, u8 asc, u8 ascq)
{
 bool d_sense = (dev->flags & ATA_DFLAG_D_SENSE);

 if (!cmd)
  return;

 cmd->result = (DRIVER_SENSE << 24) | SAM_STAT_CHECK_CONDITION;

 scsi_build_sense_buffer(d_sense, cmd->sense_buffer, sk, asc, ascq);
}
