
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ maddronly; int dma_ctrl; int dtlb_lo3; int dtlb_hi3; int dtlb_lo2; int dtlb_hi2; int dtlb_lo1; int dtlb_hi1; int dtlb_lo0; int dtlb_hi0; } ;


 int CPU_ERRMASK ;
 scalar_t__ check_microtlb (int ,int ,scalar_t__) ;
 scalar_t__ cpu_err_addr ;
 int cpu_err_stat ;
 TYPE_1__* sgimc ;

__attribute__((used)) static int check_vdma_memaddr(void)
{
 if (cpu_err_stat & CPU_ERRMASK) {
  u32 a = sgimc->maddronly;

  if (!(sgimc->dma_ctrl & 0x100))
   return cpu_err_addr == a;

  if (check_microtlb(sgimc->dtlb_hi0, sgimc->dtlb_lo0, a) ||
      check_microtlb(sgimc->dtlb_hi1, sgimc->dtlb_lo1, a) ||
      check_microtlb(sgimc->dtlb_hi2, sgimc->dtlb_lo2, a) ||
      check_microtlb(sgimc->dtlb_hi3, sgimc->dtlb_lo3, a))
   return 1;
 }
 return 0;
}
