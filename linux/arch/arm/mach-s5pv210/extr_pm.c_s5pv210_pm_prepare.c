
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 unsigned int S5P_CFG_WFI_CLEAN ;
 unsigned int S5P_CFG_WFI_SLEEP ;
 int S5P_INFORM0 ;
 int S5P_OTHERS ;
 unsigned int S5P_OTHER_SYSC_INTOFF ;
 int S5P_PWR_CFG ;
 int S5P_SLEEP_CFG ;
 unsigned int S5P_SLEEP_CFG_OSC_EN ;
 unsigned int S5P_SLEEP_CFG_USBOSC_EN ;
 int S5P_WAKEUP_MASK ;
 unsigned int __pa_symbol (int ) ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;
 int s3c_pm_do_save (int ,int ) ;
 int s5pv210_core_save ;
 int s5pv210_cpu_resume ;
 unsigned int s5pv210_irqwake_intmask ;

__attribute__((used)) static void s5pv210_pm_prepare(void)
{
 unsigned int tmp;





 __raw_writel(s5pv210_irqwake_intmask, S5P_WAKEUP_MASK);


 __raw_writel(__pa_symbol(s5pv210_cpu_resume), S5P_INFORM0);

 tmp = __raw_readl(S5P_SLEEP_CFG);
 tmp &= ~(S5P_SLEEP_CFG_OSC_EN | S5P_SLEEP_CFG_USBOSC_EN);
 __raw_writel(tmp, S5P_SLEEP_CFG);


 tmp = __raw_readl(S5P_PWR_CFG);
 tmp &= S5P_CFG_WFI_CLEAN;
 tmp |= S5P_CFG_WFI_SLEEP;
 __raw_writel(tmp, S5P_PWR_CFG);


 tmp = __raw_readl(S5P_OTHERS);
 tmp |= S5P_OTHER_SYSC_INTOFF;
 __raw_writel(tmp, S5P_OTHERS);

 s3c_pm_do_save(s5pv210_core_save, ARRAY_SIZE(s5pv210_core_save));
}
