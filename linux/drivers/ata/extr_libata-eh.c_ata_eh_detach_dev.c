
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int lock; int pflags; } ;
struct ata_eh_context {int saved_ncq_enabled; scalar_t__* saved_xfer_mode; int i; } ;
struct ata_link {struct ata_eh_context eh_context; int eh_info; struct ata_port* ap; } ;
struct ata_device {size_t devno; int flags; struct ata_link* link; } ;


 int ATA_DFLAG_DETACH ;
 int ATA_DFLAG_DETACHED ;
 int ATA_EH_PERDEV_MASK ;
 int ATA_PFLAG_SCSI_HOTPLUG ;
 int ata_dev_disable (struct ata_device*) ;
 int ata_eh_clear_action (struct ata_link*,struct ata_device*,int *,int ) ;
 scalar_t__ ata_scsi_offline_dev (struct ata_device*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void ata_eh_detach_dev(struct ata_device *dev)
{
 struct ata_link *link = dev->link;
 struct ata_port *ap = link->ap;
 struct ata_eh_context *ehc = &link->eh_context;
 unsigned long flags;

 ata_dev_disable(dev);

 spin_lock_irqsave(ap->lock, flags);

 dev->flags &= ~ATA_DFLAG_DETACH;

 if (ata_scsi_offline_dev(dev)) {
  dev->flags |= ATA_DFLAG_DETACHED;
  ap->pflags |= ATA_PFLAG_SCSI_HOTPLUG;
 }


 ata_eh_clear_action(link, dev, &link->eh_info, ATA_EH_PERDEV_MASK);
 ata_eh_clear_action(link, dev, &link->eh_context.i, ATA_EH_PERDEV_MASK);
 ehc->saved_xfer_mode[dev->devno] = 0;
 ehc->saved_ncq_enabled &= ~(1 << dev->devno);

 spin_unlock_irqrestore(ap->lock, flags);
}
