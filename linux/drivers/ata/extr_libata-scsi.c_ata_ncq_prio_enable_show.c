
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int host; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ata_port {int lock; } ;
struct ata_device {int flags; } ;
typedef int ssize_t ;


 int ATA_DFLAG_NCQ_PRIO_ENABLE ;
 int ENODEV ;
 struct ata_device* ata_scsi_find_dev (struct ata_port*,struct scsi_device*) ;
 struct ata_port* ata_shost_to_port (int ) ;
 int snprintf (char*,int,char*,int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t ata_ncq_prio_enable_show(struct device *device,
     struct device_attribute *attr,
     char *buf)
{
 struct scsi_device *sdev = to_scsi_device(device);
 struct ata_port *ap;
 struct ata_device *dev;
 bool ncq_prio_enable;
 int rc = 0;

 ap = ata_shost_to_port(sdev->host);

 spin_lock_irq(ap->lock);
 dev = ata_scsi_find_dev(ap, sdev);
 if (!dev) {
  rc = -ENODEV;
  goto unlock;
 }

 ncq_prio_enable = dev->flags & ATA_DFLAG_NCQ_PRIO_ENABLE;

unlock:
 spin_unlock_irq(ap->lock);

 return rc ? rc : snprintf(buf, 20, "%u\n", ncq_prio_enable);
}
