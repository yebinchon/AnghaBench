
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_zx_pll {TYPE_1__* lookup_table; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {long rate; } ;


 int rate_to_idx (struct clk_zx_pll*,unsigned long) ;
 struct clk_zx_pll* to_clk_zx_pll (struct clk_hw*) ;

__attribute__((used)) static long zx_pll_round_rate(struct clk_hw *hw, unsigned long rate,
         unsigned long *prate)
{
 struct clk_zx_pll *zx_pll = to_clk_zx_pll(hw);
 int idx;

 idx = rate_to_idx(zx_pll, rate);

 return zx_pll->lookup_table[idx].rate;
}
