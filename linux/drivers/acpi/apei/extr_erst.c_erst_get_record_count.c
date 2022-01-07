
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int ENODEV ;
 int __erst_get_record_count () ;
 scalar_t__ erst_disable ;
 int erst_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

ssize_t erst_get_record_count(void)
{
 ssize_t count;
 unsigned long flags;

 if (erst_disable)
  return -ENODEV;

 raw_spin_lock_irqsave(&erst_lock, flags);
 count = __erst_get_record_count();
 raw_spin_unlock_irqrestore(&erst_lock, flags);

 return count;
}
