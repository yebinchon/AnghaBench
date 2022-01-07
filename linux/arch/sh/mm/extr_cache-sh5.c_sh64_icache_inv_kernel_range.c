
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long L1_CACHE_ALIGN (unsigned long long) ;
 scalar_t__ L1_CACHE_BYTES ;

__attribute__((used)) static void sh64_icache_inv_kernel_range(unsigned long start, unsigned long end)
{



 unsigned long long ullend, addr, aligned_start;
 aligned_start = (unsigned long long)(signed long long)(signed long) start;
 addr = L1_CACHE_ALIGN(aligned_start);
 ullend = (unsigned long long) (signed long long) (signed long) end;

 while (addr <= ullend) {
  __asm__ __volatile__ ("icbi %0, 0" : : "r" (addr));
  addr += L1_CACHE_BYTES;
 }
}
