
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ GPC_CNTR ;
 int GPC_CNTR_L2_PGE_SHIFT ;
 scalar_t__ gpc_base ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

void imx_gpc_set_l2_mem_power_in_lpm(bool power_off)
{
 u32 val;

 val = readl_relaxed(gpc_base + GPC_CNTR);
 val &= ~(1 << GPC_CNTR_L2_PGE_SHIFT);
 if (power_off)
  val |= 1 << GPC_CNTR_L2_PGE_SHIFT;
 writel_relaxed(val, gpc_base + GPC_CNTR);
}
