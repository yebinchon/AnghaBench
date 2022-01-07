
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int dummy; } ;
struct ata_taskfile {int flags; int command; int lbal; int lbam; int lbah; int protocol; } ;
struct ata_queued_cmd {int flags; struct ata_device* dev; TYPE_1__* ap; } ;
struct ata_device {int id; } ;
struct TYPE_2__ {int pflags; } ;


 int ATA_CMD_REQ_SENSE_DATA ;
 int ATA_PFLAG_FROZEN ;
 int ATA_PROT_NODATA ;
 int ATA_QCFLAG_SENSE_VALID ;
 int ATA_SENSE ;
 int ATA_TFLAG_DEVICE ;
 int ATA_TFLAG_ISADDR ;
 int ATA_TFLAG_LBA ;
 int ATA_TFLAG_LBA48 ;
 int DMA_NONE ;
 int DPRINTK (char*) ;
 int ata_dev_warn (struct ata_device*,char*,...) ;
 unsigned int ata_exec_internal (struct ata_device*,struct ata_taskfile*,int *,int ,int *,int ,int ) ;
 int ata_id_sense_reporting_enabled (int ) ;
 int ata_scsi_set_sense (struct ata_device*,struct scsi_cmnd*,int ,int ,int ) ;
 int ata_tf_init (struct ata_device*,struct ata_taskfile*) ;

__attribute__((used)) static void ata_eh_request_sense(struct ata_queued_cmd *qc,
     struct scsi_cmnd *cmd)
{
 struct ata_device *dev = qc->dev;
 struct ata_taskfile tf;
 unsigned int err_mask;

 if (qc->ap->pflags & ATA_PFLAG_FROZEN) {
  ata_dev_warn(dev, "sense data available but port frozen\n");
  return;
 }

 if (!cmd || qc->flags & ATA_QCFLAG_SENSE_VALID)
  return;

 if (!ata_id_sense_reporting_enabled(dev->id)) {
  ata_dev_warn(qc->dev, "sense data reporting disabled\n");
  return;
 }

 DPRINTK("ATA request sense\n");

 ata_tf_init(dev, &tf);
 tf.flags |= ATA_TFLAG_ISADDR | ATA_TFLAG_DEVICE;
 tf.flags |= ATA_TFLAG_LBA | ATA_TFLAG_LBA48;
 tf.command = ATA_CMD_REQ_SENSE_DATA;
 tf.protocol = ATA_PROT_NODATA;

 err_mask = ata_exec_internal(dev, &tf, ((void*)0), DMA_NONE, ((void*)0), 0, 0);

 if (tf.command & ATA_SENSE) {
  ata_scsi_set_sense(dev, cmd, tf.lbah, tf.lbam, tf.lbal);
  qc->flags |= ATA_QCFLAG_SENSE_VALID;
 } else {
  ata_dev_warn(dev, "request sense failed stat %02x emask %x\n",
        tf.command, err_mask);
 }
}
