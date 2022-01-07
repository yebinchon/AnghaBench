
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long line_size; } ;


 size_t DCACHE ;
 TYPE_1__* L1_cache_info ;
 int NDS32_CCTL_L1D_IX_RWD ;
 unsigned long PAGE_SIZE ;
 int __nds32__cctlidx_read (int ,int ) ;

void cpu_dcache_wbinval_page(unsigned long start)
{
 unsigned long line_size, end;

 line_size = L1_cache_info[DCACHE].line_size;
 end = start + PAGE_SIZE;

 do {
  end -= line_size;

  __asm__ volatile ("\n\tcctl %0, L1D_VA_WB"::"r" (end));

  __asm__ volatile ("\n\tcctl %0, L1D_VA_INVAL"::"r" (end));
  end -= line_size;

  __asm__ volatile ("\n\tcctl %0, L1D_VA_WB"::"r" (end));

  __asm__ volatile ("\n\tcctl %0, L1D_VA_INVAL"::"r" (end));
  end -= line_size;

  __asm__ volatile ("\n\tcctl %0, L1D_VA_WB"::"r" (end));

  __asm__ volatile ("\n\tcctl %0, L1D_VA_INVAL"::"r" (end));
  end -= line_size;

  __asm__ volatile ("\n\tcctl %0, L1D_VA_WB"::"r" (end));

  __asm__ volatile ("\n\tcctl %0, L1D_VA_INVAL"::"r" (end));
 } while (end != start);
 __nds32__cctlidx_read(NDS32_CCTL_L1D_IX_RWD,0);
}
