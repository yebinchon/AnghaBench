
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CPU_RESET_ASSERT ;
 scalar_t__ CPU_RESET_OFFSET (int) ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ cpu_reset_base ;
 scalar_t__ cpu_reset_size ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

int mvebu_cpu_reset_deassert(int cpu)
{
 u32 reg;

 if (!cpu_reset_base)
  return -ENODEV;

 if (CPU_RESET_OFFSET(cpu) >= cpu_reset_size)
  return -EINVAL;

 reg = readl(cpu_reset_base + CPU_RESET_OFFSET(cpu));
 reg &= ~CPU_RESET_ASSERT;
 writel(reg, cpu_reset_base + CPU_RESET_OFFSET(cpu));

 return 0;
}
