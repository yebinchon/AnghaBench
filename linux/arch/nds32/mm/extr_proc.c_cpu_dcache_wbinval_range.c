
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long line_size; } ;


 size_t DCACHE ;
 TYPE_1__* L1_cache_info ;
 int NDS32_CCTL_L1D_IX_RWD ;
 int __nds32__cctlidx_read (int ,int ) ;

void cpu_dcache_wbinval_range(unsigned long start, unsigned long end)
{
 unsigned long line_size;

 line_size = L1_cache_info[DCACHE].line_size;

 while (end > start) {

  __asm__ volatile ("\n\tcctl %0, L1D_VA_WB"::"r" (start));

  __asm__ volatile ("\n\tcctl %0, L1D_VA_INVAL"::"r" (start));
  start += line_size;
 }
 __nds32__cctlidx_read(NDS32_CCTL_L1D_IX_RWD,0);
}
