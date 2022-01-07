
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CCR_CACHE_ICI ;
 int SH_CCR ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int back_to_cached () ;
 int jump_to_uncached () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void flush_icache_all(void)
{
 unsigned long flags, ccr;

 local_irq_save(flags);
 jump_to_uncached();


 ccr = __raw_readl(SH_CCR);
 ccr |= CCR_CACHE_ICI;
 __raw_writel(ccr, SH_CCR);






 back_to_cached();
 local_irq_restore(flags);
}
