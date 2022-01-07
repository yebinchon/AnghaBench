
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (unsigned long) ;
 unsigned long PAGE_SHIFT ;
 unsigned long l2_get_va (unsigned long) ;
 int l2_put_va (unsigned long) ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;

__attribute__((used)) static inline void l2_inv_pa_range(unsigned long start, unsigned long end)
{
 unsigned long va_start, va_end, flags;






 BUG_ON((start ^ end) >> PAGE_SHIFT);

 va_start = l2_get_va(start);
 va_end = va_start + (end - start);
 raw_local_irq_save(flags);
 __asm__("mcr p15, 1, %0, c15, c11, 4\n\t"
  "mcr p15, 1, %1, c15, c11, 5"
  : : "r" (va_start), "r" (va_end));
 raw_local_irq_restore(flags);
 l2_put_va(va_start);
}
