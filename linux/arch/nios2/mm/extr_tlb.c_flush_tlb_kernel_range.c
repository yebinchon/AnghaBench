
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PAGE_SIZE ;
 int flush_tlb_one (unsigned long) ;

void flush_tlb_kernel_range(unsigned long start, unsigned long end)
{
 while (start < end) {
  flush_tlb_one(start);
  start += PAGE_SIZE;
 }
}
