
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ PRCM_PWR_SWITCH_REG (unsigned int,unsigned int) ;
 int pr_debug (char*,unsigned int,unsigned int) ;
 scalar_t__ prcm_base ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sunxi_cpu_power_switch_set(unsigned int cpu, unsigned int cluster,
          bool enable)
{
 u32 reg;


 reg = readl(prcm_base + PRCM_PWR_SWITCH_REG(cluster, cpu));
 if (enable) {
  if (reg == 0x00) {
   pr_debug("power clamp for cluster %u cpu %u already open\n",
     cluster, cpu);
   return 0;
  }

  writel(0xff, prcm_base + PRCM_PWR_SWITCH_REG(cluster, cpu));
  udelay(10);
  writel(0xfe, prcm_base + PRCM_PWR_SWITCH_REG(cluster, cpu));
  udelay(10);
  writel(0xf8, prcm_base + PRCM_PWR_SWITCH_REG(cluster, cpu));
  udelay(10);
  writel(0xf0, prcm_base + PRCM_PWR_SWITCH_REG(cluster, cpu));
  udelay(10);
  writel(0x00, prcm_base + PRCM_PWR_SWITCH_REG(cluster, cpu));
  udelay(10);
 } else {
  writel(0xff, prcm_base + PRCM_PWR_SWITCH_REG(cluster, cpu));
  udelay(10);
 }

 return 0;
}
