
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_clk_pll_data {int flags; int frac; } ;


 int CLK_MESON_PLL_ROUND_CLOSEST ;
 int MESON_PARM_APPLICABLE (int *) ;

__attribute__((used)) static int __pll_round_closest_mult(struct meson_clk_pll_data *pll)
{
 if ((pll->flags & CLK_MESON_PLL_ROUND_CLOSEST) &&
     !MESON_PARM_APPLICABLE(&pll->frac))
  return 1;

 return 0;
}
