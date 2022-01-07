
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_SMP ;
 int IS_ENABLED (int ) ;
 int arch_irqs_disabled () ;
 int flush_data_cache () ;
 int flush_tlb_kernel_range (unsigned long,unsigned long) ;
 unsigned long parisc_cache_flush_threshold ;
 int purge_kernel_dcache_range_asm (unsigned long,unsigned long) ;

void invalidate_kernel_vmap_range(void *vaddr, int size)
{
 unsigned long start = (unsigned long)vaddr;
 unsigned long end = start + size;

 if ((!IS_ENABLED(CONFIG_SMP) || !arch_irqs_disabled()) &&
     (unsigned long)size >= parisc_cache_flush_threshold) {
  flush_tlb_kernel_range(start, end);
  flush_data_cache();
  return;
 }

 purge_kernel_dcache_range_asm(start, end);
 flush_tlb_kernel_range(start, end);
}
