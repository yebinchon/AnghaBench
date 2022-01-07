
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct notifier_block {int dummy; } ;
struct davinci_pllen_clk {scalar_t__ base; } ;
struct clk_notifier_data {int clk; } ;
struct clk_hw {int dummy; } ;


 int NOTIFY_OK ;
 scalar_t__ PLLCMD ;
 int PLLCMD_GOSET ;
 scalar_t__ PLLSTAT ;
 int PLLSTAT_GOSTAT ;


 struct clk_hw* __clk_get_hw (int ) ;
 int clk_get_parent (int ) ;
 int readl (scalar_t__) ;
 struct davinci_pllen_clk* to_davinci_pllen_clk (struct clk_hw*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int davinci_pll_sysclk_rate_change(struct notifier_block *nb,
       unsigned long flags, void *data)
{
 struct clk_notifier_data *cnd = data;
 struct clk_hw *hw = __clk_get_hw(clk_get_parent(cnd->clk));
 struct davinci_pllen_clk *pll = to_davinci_pllen_clk(hw);
 u32 pllcmd, pllstat;

 switch (flags) {
 case 129:

  pllcmd = readl(pll->base + PLLCMD);
  pllcmd |= PLLCMD_GOSET;
  writel(pllcmd, pll->base + PLLCMD);

 case 128:

  do {
   pllstat = readl(pll->base + PLLSTAT);
  } while (pllstat & PLLSTAT_GOSTAT);
  break;
 }

 return NOTIFY_OK;
}
