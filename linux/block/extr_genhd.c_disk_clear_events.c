
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {struct disk_events* ev; struct block_device_operations* fops; } ;
struct disk_events {unsigned int clearing; unsigned int pending; int lock; } ;
struct block_device_operations {scalar_t__ (* media_changed ) (struct gendisk*) ;} ;


 unsigned int DISK_EVENT_MEDIA_CHANGE ;
 int WARN_ON_ONCE (unsigned int) ;
 int __disk_unblock_events (struct gendisk*,int) ;
 int disk_block_events (struct gendisk*) ;
 int disk_check_events (struct disk_events*,unsigned int*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ stub1 (struct gendisk*) ;

unsigned int disk_clear_events(struct gendisk *disk, unsigned int mask)
{
 const struct block_device_operations *bdops = disk->fops;
 struct disk_events *ev = disk->ev;
 unsigned int pending;
 unsigned int clearing = mask;

 if (!ev) {

  if ((mask & DISK_EVENT_MEDIA_CHANGE) &&
      bdops->media_changed && bdops->media_changed(disk))
   return DISK_EVENT_MEDIA_CHANGE;
  return 0;
 }

 disk_block_events(disk);






 spin_lock_irq(&ev->lock);
 clearing |= ev->clearing;
 ev->clearing = 0;
 spin_unlock_irq(&ev->lock);

 disk_check_events(ev, &clearing);




 __disk_unblock_events(disk, ev->clearing ? 1 : 0);


 spin_lock_irq(&ev->lock);
 pending = ev->pending & mask;
 ev->pending &= ~mask;
 spin_unlock_irq(&ev->lock);
 WARN_ON_ONCE(clearing & mask);

 return pending;
}
