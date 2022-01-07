
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __wd_smp_lock ;
 int clear_bit_unlock (int ,int *) ;
 int raw_local_irq_restore (unsigned long) ;

__attribute__((used)) static inline void wd_smp_unlock(unsigned long *flags)
{
 clear_bit_unlock(0, &__wd_smp_lock);
 raw_local_irq_restore(*flags);
}
