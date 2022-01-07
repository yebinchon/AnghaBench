
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int cpu_do_idle () ;
 int ddr_operation_base ;
 int memory_pm_ctrl ;
 int readl (int ) ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static void kirkwood_low_power(void)
{
 u32 mem_pm_ctrl;

 mem_pm_ctrl = readl(memory_pm_ctrl);


 writel_relaxed(~0, memory_pm_ctrl);


 writel_relaxed(0x7, ddr_operation_base);






 cpu_do_idle();

 writel_relaxed(mem_pm_ctrl, memory_pm_ctrl);
}
