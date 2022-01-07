
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {struct disk_events* ev; } ;
struct disk_events {scalar_t__ block; int lock; int dwork; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 unsigned long disk_events_poll_jiffies (struct gendisk*) ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int system_freezable_power_efficient_wq ;

__attribute__((used)) static void __disk_unblock_events(struct gendisk *disk, bool check_now)
{
 struct disk_events *ev = disk->ev;
 unsigned long intv;
 unsigned long flags;

 spin_lock_irqsave(&ev->lock, flags);

 if (WARN_ON_ONCE(ev->block <= 0))
  goto out_unlock;

 if (--ev->block)
  goto out_unlock;

 intv = disk_events_poll_jiffies(disk);
 if (check_now)
  queue_delayed_work(system_freezable_power_efficient_wq,
    &ev->dwork, 0);
 else if (intv)
  queue_delayed_work(system_freezable_power_efficient_wq,
    &ev->dwork, intv);
out_unlock:
 spin_unlock_irqrestore(&ev->lock, flags);
}
