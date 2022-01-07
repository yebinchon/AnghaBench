
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GPC_PGC_CPU_PDN ;
 scalar_t__ gpc_base ;
 int writel_relaxed (int,scalar_t__) ;

void imx_gpc_set_arm_power_in_lpm(bool power_off)
{
 writel_relaxed(power_off, gpc_base + GPC_PGC_CPU_PDN);
}
