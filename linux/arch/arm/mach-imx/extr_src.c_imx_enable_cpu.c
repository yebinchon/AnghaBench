
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BP_SRC_SCR_CORE1_ENABLE ;
 int BP_SRC_SCR_CORE1_RST ;
 scalar_t__ SRC_SCR ;
 int cpu_logical_map (int) ;
 int readl_relaxed (scalar_t__) ;
 int scr_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ src_base ;
 int writel_relaxed (int,scalar_t__) ;

void imx_enable_cpu(int cpu, bool enable)
{
 u32 mask, val;

 cpu = cpu_logical_map(cpu);
 mask = 1 << (BP_SRC_SCR_CORE1_ENABLE + cpu - 1);
 spin_lock(&scr_lock);
 val = readl_relaxed(src_base + SRC_SCR);
 val = enable ? val | mask : val & ~mask;
 val |= 1 << (BP_SRC_SCR_CORE1_RST + cpu - 1);
 writel_relaxed(val, src_base + SRC_SCR);
 spin_unlock(&scr_lock);
}
