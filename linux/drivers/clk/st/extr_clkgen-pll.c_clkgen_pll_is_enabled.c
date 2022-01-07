
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clkgen_pll {int dummy; } ;
struct clk_hw {int dummy; } ;


 int CLKGEN_READ (struct clkgen_pll*,int ) ;
 int pdn_status ;
 struct clkgen_pll* to_clkgen_pll (struct clk_hw*) ;

__attribute__((used)) static int clkgen_pll_is_enabled(struct clk_hw *hw)
{
 struct clkgen_pll *pll = to_clkgen_pll(hw);
 u32 poweroff = CLKGEN_READ(pll, pdn_status);
 return !poweroff;
}
