
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ SRC_GPR1 ;
 int cpu_logical_map (int) ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ src_base ;

u32 imx_get_cpu_arg(int cpu)
{
 cpu = cpu_logical_map(cpu);
 return readl_relaxed(src_base + SRC_GPR1 + cpu * 8 + 4);
}
