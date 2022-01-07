
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {struct disk_events* ev; } ;
struct disk_events {int block_mutex; int dwork; int lock; int block; } ;


 int cancel_delayed_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void disk_block_events(struct gendisk *disk)
{
 struct disk_events *ev = disk->ev;
 unsigned long flags;
 bool cancel;

 if (!ev)
  return;





 mutex_lock(&ev->block_mutex);

 spin_lock_irqsave(&ev->lock, flags);
 cancel = !ev->block++;
 spin_unlock_irqrestore(&ev->lock, flags);

 if (cancel)
  cancel_delayed_work_sync(&disk->ev->dwork);

 mutex_unlock(&ev->block_mutex);
}
