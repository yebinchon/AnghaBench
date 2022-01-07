
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cpupll_reg_base; scalar_t__ ddrpll_reg_base; scalar_t__ deepsleep_reg; unsigned int sleepcount; } ;


 unsigned int DEEPSLEEP_SLEEPCOUNT_MASK ;
 scalar_t__ PLLCTL ;
 unsigned int PLLCTL_PLLEN ;
 unsigned int PLLCTL_PLLENSRC ;
 unsigned int PLLCTL_PLLPWRDN ;
 unsigned int PLLCTL_PLLRST ;
 int PLL_BYPASS_TIME ;
 int PLL_LOCK_TIME ;
 int PLL_RESET_TIME ;
 unsigned int __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned int,scalar_t__) ;
 int davinci_sram_suspend (TYPE_1__*) ;
 TYPE_1__ pm_config ;
 int udelay (int ) ;

__attribute__((used)) static void davinci_pm_suspend(void)
{
 unsigned val;

 if (pm_config.cpupll_reg_base != pm_config.ddrpll_reg_base) {


  val = __raw_readl(pm_config.cpupll_reg_base + PLLCTL);
  val &= ~(PLLCTL_PLLENSRC | PLLCTL_PLLEN);
  __raw_writel(val, pm_config.cpupll_reg_base + PLLCTL);

  udelay(PLL_BYPASS_TIME);


  val = __raw_readl(pm_config.cpupll_reg_base + PLLCTL);
  val |= PLLCTL_PLLPWRDN;
  __raw_writel(val, pm_config.cpupll_reg_base + PLLCTL);
 }


 val = __raw_readl(pm_config.deepsleep_reg);
 val &= ~DEEPSLEEP_SLEEPCOUNT_MASK,
 val |= pm_config.sleepcount;
 __raw_writel(val, pm_config.deepsleep_reg);


 davinci_sram_suspend(&pm_config);

 if (pm_config.cpupll_reg_base != pm_config.ddrpll_reg_base) {


  val = __raw_readl(pm_config.cpupll_reg_base + PLLCTL);
  val &= ~PLLCTL_PLLRST;
  __raw_writel(val, pm_config.cpupll_reg_base + PLLCTL);


  val = __raw_readl(pm_config.cpupll_reg_base + PLLCTL);
  val &= ~PLLCTL_PLLPWRDN;
  __raw_writel(val, pm_config.cpupll_reg_base + PLLCTL);


  udelay(PLL_RESET_TIME);


  val = __raw_readl(pm_config.cpupll_reg_base + PLLCTL);
  val |= PLLCTL_PLLRST;
  __raw_writel(val, pm_config.cpupll_reg_base + PLLCTL);


  udelay(PLL_LOCK_TIME);


  val = __raw_readl(pm_config.cpupll_reg_base + PLLCTL);
  val &= ~PLLCTL_PLLENSRC;
  val |= PLLCTL_PLLEN;
  __raw_writel(val, pm_config.cpupll_reg_base + PLLCTL);
 }
}
