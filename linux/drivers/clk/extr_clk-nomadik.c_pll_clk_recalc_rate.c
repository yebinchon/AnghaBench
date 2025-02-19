
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct clk_pll {int id; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ SRC_PLLFR ;
 int readl (scalar_t__) ;
 scalar_t__ src_base ;
 struct clk_pll* to_pll (struct clk_hw*) ;

__attribute__((used)) static unsigned long pll_clk_recalc_rate(struct clk_hw *hw,
       unsigned long parent_rate)
{
 struct clk_pll *pll = to_pll(hw);
 u32 val;

 val = readl(src_base + SRC_PLLFR);

 if (pll->id == 1) {
  u8 mul;
  u8 div;

  mul = (val >> 8) & 0x3FU;
  mul += 2;
  div = val & 0x07U;
  return (parent_rate * mul) >> div;
 }

 if (pll->id == 2) {
  u8 mul;

  mul = (val >> 24) & 0x3FU;
  mul += 2;
  return (parent_rate * mul);
 }


 return 0;
}
