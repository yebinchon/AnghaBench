
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devres_group {int * node; } ;
struct device {int devres_lock; } ;


 int WARN_ON (int) ;
 int add_dr (struct device*,int *) ;
 struct devres_group* find_group (struct device*,void*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void devres_close_group(struct device *dev, void *id)
{
 struct devres_group *grp;
 unsigned long flags;

 spin_lock_irqsave(&dev->devres_lock, flags);

 grp = find_group(dev, id);
 if (grp)
  add_dr(dev, &grp->node[1]);
 else
  WARN_ON(1);

 spin_unlock_irqrestore(&dev->devres_lock, flags);
}
