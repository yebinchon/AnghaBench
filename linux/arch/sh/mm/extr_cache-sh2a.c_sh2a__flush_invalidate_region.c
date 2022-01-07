
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CACHE_OC_ADDRESS_ARRAY ;
 int CCR_OCACHE_INVALIDATE ;
 int L1_CACHE_BYTES ;
 unsigned long MAX_OCACHE_PAGES ;
 unsigned long PAGE_SHIFT ;
 int SH_CCR ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int back_to_cached () ;
 int jump_to_uncached () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int sh2a_invalidate_line (int ,unsigned long) ;

__attribute__((used)) static void sh2a__flush_invalidate_region(void *start, int size)
{
 unsigned long v;
 unsigned long begin, end;
 unsigned long flags;

 begin = (unsigned long)start & ~(L1_CACHE_BYTES-1);
 end = ((unsigned long)start + size + L1_CACHE_BYTES-1)
  & ~(L1_CACHE_BYTES-1);

 local_irq_save(flags);
 jump_to_uncached();


 if (((end - begin) >> PAGE_SHIFT) >= MAX_OCACHE_PAGES) {
  __raw_writel(__raw_readl(SH_CCR) | CCR_OCACHE_INVALIDATE,
        SH_CCR);
 } else {
  for (v = begin; v < end; v += L1_CACHE_BYTES)
   sh2a_invalidate_line(CACHE_OC_ADDRESS_ARRAY, v);
 }

 back_to_cached();
 local_irq_restore(flags);
}
