
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_channel {int dummy; } ;


 int __ds_send (struct ldc_channel*,void*,int) ;
 int ds_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ds_send(struct ldc_channel *lp, void *data, int len)
{
 unsigned long flags;
 int err;

 spin_lock_irqsave(&ds_lock, flags);
 err = __ds_send(lp, data, len);
 spin_unlock_irqrestore(&ds_lock, flags);

 return err;
}
