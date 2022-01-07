
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct scsi_cmnd {int sense_buffer; } ;
struct ata_device {int dummy; } ;


 int ILLEGAL_REQUEST ;
 int SCSI_SENSE_BUFFERSIZE ;
 int ata_scsi_set_sense (struct ata_device*,struct scsi_cmnd*,int ,int,int) ;
 int scsi_set_sense_field_pointer (int ,int ,int ,int,int ) ;

__attribute__((used)) static void ata_scsi_set_invalid_parameter(struct ata_device *dev,
        struct scsi_cmnd *cmd, u16 field)
{

 ata_scsi_set_sense(dev, cmd, ILLEGAL_REQUEST, 0x26, 0x0);
 scsi_set_sense_field_pointer(cmd->sense_buffer, SCSI_SENSE_BUFFERSIZE,
         field, 0xff, 0);
}
