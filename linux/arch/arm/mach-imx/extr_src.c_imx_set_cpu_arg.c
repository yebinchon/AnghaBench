
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ SRC_GPR1 ;
 int cpu_logical_map (int) ;
 scalar_t__ src_base ;
 int writel_relaxed (int ,scalar_t__) ;

void imx_set_cpu_arg(int cpu, u32 arg)
{
 cpu = cpu_logical_map(cpu);
 writel_relaxed(arg, src_base + SRC_GPR1 + cpu * 8 + 4);
}
