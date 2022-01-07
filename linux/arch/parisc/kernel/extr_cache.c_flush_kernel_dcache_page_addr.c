
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_kernel_dcache_page_asm (void*) ;
 int pdtlb_kernel (void*) ;
 int purge_tlb_end (unsigned long) ;
 int purge_tlb_start (unsigned long) ;

void flush_kernel_dcache_page_addr(void *addr)
{
 unsigned long flags;

 flush_kernel_dcache_page_asm(addr);
 purge_tlb_start(flags);
 pdtlb_kernel(addr);
 purge_tlb_end(flags);
}
