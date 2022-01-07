
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long SZLONG_LOG ;
 unsigned long SZLONG_MASK ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;

void __mips_clear_bit(unsigned long nr, volatile unsigned long *addr)
{
 unsigned long *a = (unsigned long *)addr;
 unsigned bit = nr & SZLONG_MASK;
 unsigned long mask;
 unsigned long flags;

 a += nr >> SZLONG_LOG;
 mask = 1UL << bit;
 raw_local_irq_save(flags);
 *a &= ~mask;
 raw_local_irq_restore(flags);
}
