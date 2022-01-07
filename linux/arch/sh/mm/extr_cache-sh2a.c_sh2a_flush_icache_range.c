
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flusher_data {int addr1; int addr2; } ;


 int CACHE_IC_ADDRESS_ARRAY ;
 int CCR_ICACHE_INVALIDATE ;
 int L1_CACHE_BYTES ;
 unsigned long MAX_ICACHE_PAGES ;
 unsigned long PAGE_SHIFT ;
 int SH_CCR ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int back_to_cached () ;
 int jump_to_uncached () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int sh2a__flush_wback_region (void*,unsigned long) ;
 int sh2a_invalidate_line (int ,unsigned long) ;

__attribute__((used)) static void sh2a_flush_icache_range(void *args)
{
 struct flusher_data *data = args;
 unsigned long start, end;
 unsigned long v;
 unsigned long flags;

 start = data->addr1 & ~(L1_CACHE_BYTES-1);
 end = (data->addr2 + L1_CACHE_BYTES-1) & ~(L1_CACHE_BYTES-1);





 local_irq_save(flags);
 jump_to_uncached();



 if (((end - start) >> PAGE_SHIFT) >= MAX_ICACHE_PAGES) {
  __raw_writel(__raw_readl(SH_CCR) | CCR_ICACHE_INVALIDATE,
        SH_CCR);
 } else {
  for (v = start; v < end; v += L1_CACHE_BYTES)
   sh2a_invalidate_line(CACHE_IC_ADDRESS_ARRAY, v);
 }

 back_to_cached();
 local_irq_restore(flags);
}
