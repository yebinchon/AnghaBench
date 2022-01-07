
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long line_size; } ;


 size_t DCACHE ;
 size_t ICACHE ;
 TYPE_1__* L1_cache_info ;
 int cpu_dcache_wbinval_range (unsigned long,unsigned long) ;
 int cpu_icache_inval_range (unsigned long,unsigned long) ;

void cpu_cache_wbinval_range(unsigned long start, unsigned long end, int flushi)
{
 unsigned long line_size, align_start, align_end;

 line_size = L1_cache_info[DCACHE].line_size;
 align_start = start & ~(line_size - 1);
 align_end = (end + line_size - 1) & ~(line_size - 1);
 cpu_dcache_wbinval_range(align_start, align_end);

 if (flushi) {
  line_size = L1_cache_info[ICACHE].line_size;
  align_start = start & ~(line_size - 1);
  align_end = (end + line_size - 1) & ~(line_size - 1);
  cpu_icache_inval_range(align_start, align_end);
 }
}
