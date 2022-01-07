
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flush_tlb_info {unsigned long start; unsigned long end; } ;


 unsigned long PAGE_SIZE ;
 int __flush_tlb_one_kernel (unsigned long) ;

__attribute__((used)) static void do_kernel_range_flush(void *info)
{
 struct flush_tlb_info *f = info;
 unsigned long addr;


 for (addr = f->start; addr < f->end; addr += PAGE_SIZE)
  __flush_tlb_one_kernel(addr);
}
