
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long dcache_base; unsigned long dcache_high; } ;


 unsigned long UNCACHED_SHADOW_MASK ;
 TYPE_1__ cpuinfo ;
 int pr_warn (char*) ;

void *uncached_kernel_address(void *ptr)
{
 unsigned long addr = (unsigned long)ptr;

 addr |= UNCACHED_SHADOW_MASK;
 if (addr > cpuinfo.dcache_base && addr < cpuinfo.dcache_high)
  pr_warn("ERROR: Your cache coherent area is CACHED!!!\n");
 return (void *)addr;
}
