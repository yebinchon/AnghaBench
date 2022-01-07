
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_pll_obj {scalar_t__ reg; } ;
struct clk_hw {int dummy; } ;


 int FRACLE ;
 int FRAC_MASK ;
 scalar_t__ FRAC_OFFSET ;
 int FRAC_SHIFT ;
 int readl_relaxed (scalar_t__) ;
 struct stm32_pll_obj* to_pll (struct clk_hw*) ;

__attribute__((used)) static u32 pll_frac_val(struct clk_hw *hw)
{
 struct stm32_pll_obj *clk_elem = to_pll(hw);
 u32 reg, frac = 0;

 reg = readl_relaxed(clk_elem->reg + FRAC_OFFSET);
 if (reg & FRACLE)
  frac = (reg >> FRAC_SHIFT) & FRAC_MASK;

 return frac;
}
