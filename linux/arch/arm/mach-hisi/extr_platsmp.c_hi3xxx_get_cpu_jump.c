
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_logical_map (int) ;
 scalar_t__ ctrl_base ;
 int readl_relaxed (scalar_t__) ;

int hi3xxx_get_cpu_jump(int cpu)
{
 cpu = cpu_logical_map(cpu);
 if (!cpu || !ctrl_base)
  return 0;
 return readl_relaxed(ctrl_base + ((cpu - 1) << 2));
}
