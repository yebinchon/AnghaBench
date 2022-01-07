
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct aoedev {int ref; } ;


 int devlist_lock ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

void
aoedev_put(struct aoedev *d)
{
 ulong flags;

 spin_lock_irqsave(&devlist_lock, flags);
 d->ref--;
 spin_unlock_irqrestore(&devlist_lock, flags);
}
