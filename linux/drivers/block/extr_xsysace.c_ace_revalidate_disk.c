
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {struct ace_device* private_data; } ;
struct ace_device {int id_result; int dev; int id_completion; int fsm_tasklet; int lock; int id_req_count; scalar_t__ media_change; } ;


 int dev_dbg (int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int ace_revalidate_disk(struct gendisk *gd)
{
 struct ace_device *ace = gd->private_data;
 unsigned long flags;

 dev_dbg(ace->dev, "ace_revalidate_disk()\n");

 if (ace->media_change) {
  dev_dbg(ace->dev, "requesting cf id and scheduling tasklet\n");

  spin_lock_irqsave(&ace->lock, flags);
  ace->id_req_count++;
  spin_unlock_irqrestore(&ace->lock, flags);

  tasklet_schedule(&ace->fsm_tasklet);
  wait_for_completion(&ace->id_completion);
 }

 dev_dbg(ace->dev, "revalidate complete\n");
 return ace->id_result;
}
