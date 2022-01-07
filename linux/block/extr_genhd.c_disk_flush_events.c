
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {struct disk_events* ev; } ;
struct disk_events {unsigned int clearing; int lock; int dwork; int block; } ;


 int mod_delayed_work (int ,int *,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int system_freezable_power_efficient_wq ;

void disk_flush_events(struct gendisk *disk, unsigned int mask)
{
 struct disk_events *ev = disk->ev;

 if (!ev)
  return;

 spin_lock_irq(&ev->lock);
 ev->clearing |= mask;
 if (!ev->block)
  mod_delayed_work(system_freezable_power_efficient_wq,
    &ev->dwork, 0);
 spin_unlock_irq(&ev->lock);
}
