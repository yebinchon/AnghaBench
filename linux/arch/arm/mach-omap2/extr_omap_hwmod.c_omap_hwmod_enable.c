
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hwmod {int _lock; } ;


 int EINVAL ;
 int _enable (struct omap_hwmod*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int omap_hwmod_enable(struct omap_hwmod *oh)
{
 int r;
 unsigned long flags;

 if (!oh)
  return -EINVAL;

 spin_lock_irqsave(&oh->_lock, flags);
 r = _enable(oh);
 spin_unlock_irqrestore(&oh->_lock, flags);

 return r;
}
