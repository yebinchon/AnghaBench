
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __wd_smp_lock ;
 int hard_irq_disable () ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;
 int spin_until_cond (int) ;
 int test_and_set_bit_lock (int ,int *) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void wd_smp_lock(unsigned long *flags)
{





 raw_local_irq_save(*flags);
 hard_irq_disable();
 while (unlikely(test_and_set_bit_lock(0, &__wd_smp_lock))) {
  raw_local_irq_restore(*flags);
  spin_until_cond(!test_bit(0, &__wd_smp_lock));
  raw_local_irq_save(*flags);
  hard_irq_disable();
 }
}
