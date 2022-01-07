
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __vmclrmap (void*,unsigned long) ;

void flush_tlb_kernel_range(unsigned long start, unsigned long end)
{
  __vmclrmap((void *)start, end - start);
}
