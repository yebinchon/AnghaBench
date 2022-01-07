
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ CLK_RST_CONTROLLER_CPU_CMPLX_STATUS ;
 scalar_t__ clk_base ;
 int cpu_relax () ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static void tegra114_wait_cpu_in_reset(u32 cpu)
{
 unsigned int reg;

 do {
  reg = readl(clk_base + CLK_RST_CONTROLLER_CPU_CMPLX_STATUS);
  cpu_relax();
 } while (!(reg & (1 << cpu)));
}
