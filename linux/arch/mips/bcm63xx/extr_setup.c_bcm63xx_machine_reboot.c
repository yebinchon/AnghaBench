
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 scalar_t__ BCMCPU_IS_6328 () ;
 scalar_t__ BCMCPU_IS_6348 () ;
 int EXTIRQ_CFG_CLEAR_ALL ;
 int EXTIRQ_CFG_CLEAR_ALL_6348 ;
 int EXTIRQ_CFG_MASK_ALL ;
 int EXTIRQ_CFG_MASK_ALL_6348 ;
 int PERF_EXTIRQ_CFG_REG_3368 ;
 int PERF_EXTIRQ_CFG_REG_6328 ;
 int PERF_EXTIRQ_CFG_REG_6338 ;
 int PERF_EXTIRQ_CFG_REG_6345 ;
 int PERF_EXTIRQ_CFG_REG_6348 ;
 int PERF_EXTIRQ_CFG_REG_6358 ;
 int PERF_EXTIRQ_CFG_REG_6362 ;
 int PERF_SYS_PLL_CTL_REG ;
 int SYS_PLL_SOFT_RESET ;
 int WDT_SOFTRESET_REG ;
 int bcm6348_a1_reboot () ;
 int bcm63xx_get_cpu_id () ;
 int bcm63xx_get_cpu_rev () ;
 int bcm_perf_readl (int ) ;
 int bcm_perf_writel (int ,int ) ;
 int bcm_wdt_writel (int,int ) ;
 int pr_info (char*) ;

void bcm63xx_machine_reboot(void)
{
 u32 reg, perf_regs[2] = { 0, 0 };
 unsigned int i;


 switch (bcm63xx_get_cpu_id()) {
 case 134:
  perf_regs[0] = PERF_EXTIRQ_CFG_REG_3368;
  break;
 case 133:
  perf_regs[0] = PERF_EXTIRQ_CFG_REG_6328;
  break;
 case 132:
  perf_regs[0] = PERF_EXTIRQ_CFG_REG_6338;
  break;
 case 131:
  perf_regs[0] = PERF_EXTIRQ_CFG_REG_6345;
  break;
 case 130:
  perf_regs[0] = PERF_EXTIRQ_CFG_REG_6348;
  break;
 case 129:
  perf_regs[0] = PERF_EXTIRQ_CFG_REG_6358;
  break;
 case 128:
  perf_regs[0] = PERF_EXTIRQ_CFG_REG_6362;
  break;
 }

 for (i = 0; i < 2; i++) {
  if (!perf_regs[i])
   break;

  reg = bcm_perf_readl(perf_regs[i]);
  if (BCMCPU_IS_6348()) {
   reg &= ~EXTIRQ_CFG_MASK_ALL_6348;
   reg |= EXTIRQ_CFG_CLEAR_ALL_6348;
  } else {
   reg &= ~EXTIRQ_CFG_MASK_ALL;
   reg |= EXTIRQ_CFG_CLEAR_ALL;
  }
  bcm_perf_writel(reg, perf_regs[i]);
 }

 if (BCMCPU_IS_6348() && (bcm63xx_get_cpu_rev() == 0xa1))
  bcm6348_a1_reboot();

 pr_info("triggering watchdog soft-reset...\n");
 if (BCMCPU_IS_6328()) {
  bcm_wdt_writel(1, WDT_SOFTRESET_REG);
 } else {
  reg = bcm_perf_readl(PERF_SYS_PLL_CTL_REG);
  reg |= SYS_PLL_SOFT_RESET;
  bcm_perf_writel(reg, PERF_SYS_PLL_CTL_REG);
 }
 while (1)
  ;
}
