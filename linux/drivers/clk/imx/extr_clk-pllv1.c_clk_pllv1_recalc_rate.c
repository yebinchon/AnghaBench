
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_pllv1 {int base; } ;
struct clk_hw {int dummy; } ;


 unsigned int BIT (int ) ;
 int MFN_BITS ;
 unsigned int MFN_MASK ;
 int do_div (unsigned long long,unsigned int) ;
 scalar_t__ is_imx27_pllv1 (struct clk_pllv1*) ;
 scalar_t__ mfn_is_negative (struct clk_pllv1*,unsigned int) ;
 int readl (int ) ;
 struct clk_pllv1* to_clk_pllv1 (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_pllv1_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct clk_pllv1 *pll = to_clk_pllv1(hw);
 unsigned long long ull;
 int mfn_abs;
 unsigned int mfi, mfn, mfd, pd;
 u32 reg;
 unsigned long rate;

 reg = readl(pll->base);
 mfi = (reg >> 10) & 0xf;
 mfn = reg & 0x3ff;
 mfd = (reg >> 16) & 0x3ff;
 pd = (reg >> 26) & 0xf;

 mfi = mfi <= 5 ? 5 : mfi;

 mfn_abs = mfn;






 if (mfn_is_negative(pll, mfn)) {
  if (is_imx27_pllv1(pll))
   mfn_abs = mfn & MFN_MASK;
  else
   mfn_abs = BIT(MFN_BITS) - mfn;
 }

 rate = parent_rate * 2;
 rate /= pd + 1;

 ull = (unsigned long long)rate * mfn_abs;

 do_div(ull, mfd + 1);

 if (mfn_is_negative(pll, mfn))
  ull = (rate * mfi) - ull;
 else
  ull = (rate * mfi) + ull;

 return ull;
}
