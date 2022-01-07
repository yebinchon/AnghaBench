
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct scsi_cmnd {int sense_buffer; } ;
struct ata_taskfile {int dummy; } ;
struct ata_device {int dummy; } ;


 int SCSI_SENSE_BUFFERSIZE ;
 scalar_t__ U64_MAX ;
 scalar_t__ ata_tf_read_block (struct ata_taskfile const*,struct ata_device*) ;
 int scsi_set_sense_information (int ,int ,scalar_t__) ;

void ata_scsi_set_sense_information(struct ata_device *dev,
        struct scsi_cmnd *cmd,
        const struct ata_taskfile *tf)
{
 u64 information;

 if (!cmd)
  return;

 information = ata_tf_read_block(tf, dev);
 if (information == U64_MAX)
  return;

 scsi_set_sense_information(cmd->sense_buffer,
       SCSI_SENSE_BUFFERSIZE, information);
}
