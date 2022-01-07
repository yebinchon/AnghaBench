
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devres_group {TYPE_1__* node; } ;
struct device {int devres_lock; } ;
struct TYPE_2__ {int entry; } ;


 int WARN_ON (int) ;
 int devres_log (struct device*,TYPE_1__*,char*) ;
 struct devres_group* find_group (struct device*,void*) ;
 int kfree (struct devres_group*) ;
 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void devres_remove_group(struct device *dev, void *id)
{
 struct devres_group *grp;
 unsigned long flags;

 spin_lock_irqsave(&dev->devres_lock, flags);

 grp = find_group(dev, id);
 if (grp) {
  list_del_init(&grp->node[0].entry);
  list_del_init(&grp->node[1].entry);
  devres_log(dev, &grp->node[0], "REM");
 } else
  WARN_ON(1);

 spin_unlock_irqrestore(&dev->devres_lock, flags);

 kfree(grp);
}
