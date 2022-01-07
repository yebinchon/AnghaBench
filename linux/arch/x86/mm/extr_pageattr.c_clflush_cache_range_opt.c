
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long x86_clflush_size; } ;


 TYPE_1__ boot_cpu_data ;
 int clflushopt (void*) ;

__attribute__((used)) static void clflush_cache_range_opt(void *vaddr, unsigned int size)
{
 const unsigned long clflush_size = boot_cpu_data.x86_clflush_size;
 void *p = (void *)((unsigned long)vaddr & ~(clflush_size - 1));
 void *vend = vaddr + size;

 if (p >= vend)
  return;

 for (; p < vend; p += clflush_size)
  clflushopt(p);
}
