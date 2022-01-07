
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ GPC_PGC_CPU_PDNSCR ;
 int GPC_PGC_SW2ISO_SHIFT ;
 int GPC_PGC_SW_SHIFT ;
 scalar_t__ gpc_base ;
 int writel_relaxed (int,scalar_t__) ;

void imx_gpc_set_arm_power_down_timing(u32 sw2iso, u32 sw)
{
 writel_relaxed((sw2iso << GPC_PGC_SW2ISO_SHIFT) |
  (sw << GPC_PGC_SW_SHIFT), gpc_base + GPC_PGC_CPU_PDNSCR);
}
