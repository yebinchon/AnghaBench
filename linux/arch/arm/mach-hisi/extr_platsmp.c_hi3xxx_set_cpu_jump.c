
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __pa_symbol (void*) ;
 int cpu_logical_map (int) ;
 scalar_t__ ctrl_base ;
 int writel_relaxed (int ,scalar_t__) ;

void hi3xxx_set_cpu_jump(int cpu, void *jump_addr)
{
 cpu = cpu_logical_map(cpu);
 if (!cpu || !ctrl_base)
  return;
 writel_relaxed(__pa_symbol(jump_addr), ctrl_base + ((cpu - 1) << 2));
}
