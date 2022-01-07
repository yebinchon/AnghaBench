
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long line_size; } ;


 size_t ICACHE ;
 TYPE_1__* L1_cache_info ;
 unsigned long PAGE_SIZE ;
 int __nds32__isb () ;

void cpu_icache_inval_page(unsigned long start)
{
 unsigned long line_size, end;

 line_size = L1_cache_info[ICACHE].line_size;
 end = start + PAGE_SIZE;

 do {
  end -= line_size;
  __asm__ volatile ("\n\tcctl %0, L1I_VA_INVAL"::"r" (end));
  end -= line_size;
  __asm__ volatile ("\n\tcctl %0, L1I_VA_INVAL"::"r" (end));
  end -= line_size;
  __asm__ volatile ("\n\tcctl %0, L1I_VA_INVAL"::"r" (end));
  end -= line_size;
  __asm__ volatile ("\n\tcctl %0, L1I_VA_INVAL"::"r" (end));
 } while (end != start);
 __nds32__isb();
}
