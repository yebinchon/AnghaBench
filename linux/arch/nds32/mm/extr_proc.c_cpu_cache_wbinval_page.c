
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_dcache_wbinval_page (unsigned long) ;
 int cpu_icache_inval_page (unsigned long) ;

void cpu_cache_wbinval_page(unsigned long page, int flushi)
{
 cpu_dcache_wbinval_page(page);
 if (flushi)
  cpu_icache_inval_page(page);
}
