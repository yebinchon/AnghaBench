
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
 scalar_t__ PLLCTL ;
 int PLLCTL_PLLDIS ;
 int PLLCTL_PLLEN ;
 int PLLCTL_PLLENSRC ;
 int PLLCTL_PLLRST ;
 int PLL_BYPASS_TIME ;
 int PLL_LOCK_TIME ;
 int PLL_RESET_TIME ;
 unsigned long PRE_RATE_CHANGE ;
 struct clk_hw* __clk_get_hw (int ) ;
 int readl (scalar_t__) ;
 struct davinci_pllen_clk* to_davinci_pllen_clk (struct clk_hw*) ;
 int udelay (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int davinci_pllen_rate_change(struct notifier_block *nb,
         unsigned long flags, void *data)
{
 struct clk_notifier_data *cnd = data;
 struct clk_hw *hw = __clk_get_hw(cnd->clk);
 struct davinci_pllen_clk *pll = to_davinci_pllen_clk(hw);
 u32 ctrl;

 ctrl = readl(pll->base + PLLCTL);

 if (flags == PRE_RATE_CHANGE) {

  ctrl &= ~(PLLCTL_PLLENSRC | PLLCTL_PLLEN);
  writel(ctrl, pll->base + PLLCTL);

  udelay(PLL_BYPASS_TIME);


  ctrl &= ~(PLLCTL_PLLRST | PLLCTL_PLLDIS);
  writel(ctrl, pll->base + PLLCTL);
 } else {
  udelay(PLL_RESET_TIME);


  ctrl |= PLLCTL_PLLRST;
  writel(ctrl, pll->base + PLLCTL);

  udelay(PLL_LOCK_TIME);


  ctrl |= PLLCTL_PLLEN;
  writel(ctrl, pll->base + PLLCTL);
 }

 return NOTIFY_OK;
}
