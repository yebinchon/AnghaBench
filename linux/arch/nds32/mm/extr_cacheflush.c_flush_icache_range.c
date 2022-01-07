
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long line_size; } ;


 size_t DCACHE ;
 TYPE_1__* L1_cache_info ;
 int cpu_cache_wbinval_range (unsigned long,unsigned long,int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void flush_icache_range(unsigned long start, unsigned long end)
{
 unsigned long line_size, flags;
 line_size = L1_cache_info[DCACHE].line_size;
 start = start & ~(line_size - 1);
 end = (end + line_size - 1) & ~(line_size - 1);
 local_irq_save(flags);
 cpu_cache_wbinval_range(start, end, 1);
 local_irq_restore(flags);
}
