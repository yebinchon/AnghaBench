
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_zx_pll {TYPE_1__* lookup_table; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {unsigned long rate; } ;


 int EINVAL ;
 int hw_to_idx (struct clk_zx_pll*) ;
 struct clk_zx_pll* to_clk_zx_pll (struct clk_hw*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned long zx_pll_recalc_rate(struct clk_hw *hw,
     unsigned long parent_rate)
{
 struct clk_zx_pll *zx_pll = to_clk_zx_pll(hw);
 int idx;

 idx = hw_to_idx(zx_pll);
 if (unlikely(idx == -EINVAL))
  return 0;

 return zx_pll->lookup_table[idx].rate;
}
