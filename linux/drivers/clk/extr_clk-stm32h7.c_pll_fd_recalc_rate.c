
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
typedef int u32 ;
struct stm32_fractional_divider {int mshift; int nshift; scalar_t__ nwidth; int nreg; scalar_t__ mwidth; int mreg; } ;
struct stm32_pll_obj {struct stm32_fractional_divider div; } ;
struct clk_hw {int dummy; } ;


 int GENMASK (scalar_t__,int ) ;
 int do_div (unsigned long,unsigned long) ;
 scalar_t__ pll_frac_is_enabled (struct clk_hw*) ;
 int pll_read_frac (struct clk_hw*) ;
 int readl (int ) ;
 struct stm32_pll_obj* to_pll (struct clk_hw*) ;

__attribute__((used)) static unsigned long pll_fd_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct stm32_pll_obj *clk_elem = to_pll(hw);
 struct stm32_fractional_divider *fd = &clk_elem->div;
 unsigned long m, n;
 u32 val, mask;
 u64 rate, rate1 = 0;

 val = readl(fd->mreg);
 mask = GENMASK(fd->mwidth - 1, 0) << fd->mshift;
 m = (val & mask) >> fd->mshift;

 val = readl(fd->nreg);
 mask = GENMASK(fd->nwidth - 1, 0) << fd->nshift;
 n = ((val & mask) >> fd->nshift) + 1;

 if (!n || !m)
  return parent_rate;

 rate = (u64)parent_rate * n;
 do_div(rate, m);

 if (pll_frac_is_enabled(hw)) {
  val = pll_read_frac(hw);
  rate1 = (u64)parent_rate * (u64)val;
  do_div(rate1, (m * 8191));
 }

 return rate + rate1;
}
