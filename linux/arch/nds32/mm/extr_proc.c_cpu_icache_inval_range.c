
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long line_size; } ;


 size_t ICACHE ;
 TYPE_1__* L1_cache_info ;
 int __nds32__isb () ;

void cpu_icache_inval_range(unsigned long start, unsigned long end)
{
 unsigned long line_size;

 line_size = L1_cache_info[ICACHE].line_size;

 while (end > start) {
  __asm__ volatile ("\n\tcctl %0, L1I_VA_INVAL"::"r" (start));
  start += line_size;
 }
 __nds32__isb();
}
