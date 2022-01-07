
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CPU_CONFIG_SHARED_L2 ;
 int cpu_config_base ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static void armada_xp_clear_shared_l2(void)
{
 u32 reg;

 if (!cpu_config_base)
  return;

 reg = readl(cpu_config_base);
 reg &= ~CPU_CONFIG_SHARED_L2;
 writel(reg, cpu_config_base);
}
