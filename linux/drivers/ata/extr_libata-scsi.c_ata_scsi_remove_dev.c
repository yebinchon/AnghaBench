
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {int sdev_gendev; } ;
struct ata_port {TYPE_1__* scsi_host; int lock; } ;
struct ata_device {struct scsi_device* sdev; TYPE_2__* link; } ;
struct TYPE_4__ {struct ata_port* ap; } ;
struct TYPE_3__ {int scan_mutex; } ;


 int SDEV_OFFLINE ;
 int WARN_ON (int) ;
 int ata_dev_info (struct ata_device*,char*,int ) ;
 int dev_name (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ scsi_device_get (struct scsi_device*) ;
 int scsi_device_put (struct scsi_device*) ;
 int scsi_device_set_state (struct scsi_device*,int ) ;
 int scsi_remove_device (struct scsi_device*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void ata_scsi_remove_dev(struct ata_device *dev)
{
 struct ata_port *ap = dev->link->ap;
 struct scsi_device *sdev;
 unsigned long flags;







 mutex_lock(&ap->scsi_host->scan_mutex);
 spin_lock_irqsave(ap->lock, flags);


 sdev = dev->sdev;
 dev->sdev = ((void*)0);

 if (sdev) {




  if (scsi_device_get(sdev) == 0) {





   scsi_device_set_state(sdev, SDEV_OFFLINE);
  } else {
   WARN_ON(1);
   sdev = ((void*)0);
  }
 }

 spin_unlock_irqrestore(ap->lock, flags);
 mutex_unlock(&ap->scsi_host->scan_mutex);

 if (sdev) {
  ata_dev_info(dev, "detaching (SCSI %s)\n",
        dev_name(&sdev->sdev_gendev));

  scsi_remove_device(sdev);
  scsi_device_put(sdev);
 }
}
