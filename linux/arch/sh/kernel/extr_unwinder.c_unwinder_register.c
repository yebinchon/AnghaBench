
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwinder {int dummy; } ;


 int curr_unwinder ;
 int select_unwinder () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unwinder_enqueue (struct unwinder*) ;
 int unwinder_lock ;

int unwinder_register(struct unwinder *u)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&unwinder_lock, flags);
 ret = unwinder_enqueue(u);
 if (!ret)
  curr_unwinder = select_unwinder();
 spin_unlock_irqrestore(&unwinder_lock, flags);

 return ret;
}
