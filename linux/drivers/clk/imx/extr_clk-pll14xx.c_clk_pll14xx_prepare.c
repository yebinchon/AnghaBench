
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_pll14xx {scalar_t__ base; } ;
struct clk_hw {int dummy; } ;


 int BYPASS_MASK ;
 scalar_t__ GNRL_CTL ;
 int RST_MASK ;
 int clk_pll14xx_wait_lock (struct clk_pll14xx*) ;
 int readl_relaxed (scalar_t__) ;
 struct clk_pll14xx* to_clk_pll14xx (struct clk_hw*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int clk_pll14xx_prepare(struct clk_hw *hw)
{
 struct clk_pll14xx *pll = to_clk_pll14xx(hw);
 u32 val;
 int ret;





 val = readl_relaxed(pll->base + GNRL_CTL);
 if (val & RST_MASK)
  return 0;
 val |= BYPASS_MASK;
 writel_relaxed(val, pll->base + GNRL_CTL);
 val |= RST_MASK;
 writel_relaxed(val, pll->base + GNRL_CTL);

 ret = clk_pll14xx_wait_lock(pll);
 if (ret)
  return ret;

 val &= ~BYPASS_MASK;
 writel_relaxed(val, pll->base + GNRL_CTL);

 return 0;
}
