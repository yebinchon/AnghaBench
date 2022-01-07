
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;struct scsi_device* device; } ;
struct ata_port {int lock; } ;
struct ata_device {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int DID_BAD_TARGET ;
 int __ata_scsi_queuecmd (struct scsi_cmnd*,struct ata_device*) ;
 int ata_scsi_dump_cdb (struct ata_port*,struct scsi_cmnd*) ;
 struct ata_device* ata_scsi_find_dev (struct ata_port*,struct scsi_device*) ;
 struct ata_port* ata_shost_to_port (struct Scsi_Host*) ;
 scalar_t__ likely (struct ata_device*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct scsi_cmnd*) ;

int ata_scsi_queuecmd(struct Scsi_Host *shost, struct scsi_cmnd *cmd)
{
 struct ata_port *ap;
 struct ata_device *dev;
 struct scsi_device *scsidev = cmd->device;
 int rc = 0;
 unsigned long irq_flags;

 ap = ata_shost_to_port(shost);

 spin_lock_irqsave(ap->lock, irq_flags);

 ata_scsi_dump_cdb(ap, cmd);

 dev = ata_scsi_find_dev(ap, scsidev);
 if (likely(dev))
  rc = __ata_scsi_queuecmd(cmd, dev);
 else {
  cmd->result = (DID_BAD_TARGET << 16);
  cmd->scsi_done(cmd);
 }

 spin_unlock_irqrestore(ap->lock, irq_flags);

 return rc;
}
