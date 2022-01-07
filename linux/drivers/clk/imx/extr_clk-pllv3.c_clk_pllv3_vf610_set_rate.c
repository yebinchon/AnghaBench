
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_pllv3_vf610_mf {int mfi; int mfd; int mfn; } ;
struct clk_pllv3 {scalar_t__ denom_offset; scalar_t__ base; scalar_t__ num_offset; int div_mask; } ;
struct clk_hw {int dummy; } ;


 struct clk_pllv3_vf610_mf clk_pllv3_vf610_rate_to_mf (unsigned long,unsigned long) ;
 int clk_pllv3_wait_lock (struct clk_pllv3*) ;
 int readl_relaxed (scalar_t__) ;
 struct clk_pllv3* to_clk_pllv3 (struct clk_hw*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int clk_pllv3_vf610_set_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long parent_rate)
{
 struct clk_pllv3 *pll = to_clk_pllv3(hw);
 struct clk_pllv3_vf610_mf mf =
   clk_pllv3_vf610_rate_to_mf(parent_rate, rate);
 u32 val;

 val = readl_relaxed(pll->base);
 if (mf.mfi == 20)
  val &= ~pll->div_mask;
 else
  val |= pll->div_mask;
 writel_relaxed(val, pll->base);

 writel_relaxed(mf.mfn, pll->base + pll->num_offset);
 writel_relaxed(mf.mfd, pll->base + pll->denom_offset);

 return clk_pllv3_wait_lock(pll);
}
