
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct clk_omap_mux {int shift; int mask; int* table; int flags; int reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* clk_readl ) (int *) ;} ;


 int CLK_MUX_INDEX_BIT ;
 int CLK_MUX_INDEX_ONE ;
 int EINVAL ;
 int clk_hw_get_num_parents (struct clk_hw*) ;
 int ffs (int) ;
 int stub1 (int *) ;
 TYPE_1__* ti_clk_ll_ops ;
 struct clk_omap_mux* to_clk_omap_mux (struct clk_hw*) ;

__attribute__((used)) static u8 ti_clk_mux_get_parent(struct clk_hw *hw)
{
 struct clk_omap_mux *mux = to_clk_omap_mux(hw);
 int num_parents = clk_hw_get_num_parents(hw);
 u32 val;
 val = ti_clk_ll_ops->clk_readl(&mux->reg) >> mux->shift;
 val &= mux->mask;

 if (mux->table) {
  int i;

  for (i = 0; i < num_parents; i++)
   if (mux->table[i] == val)
    return i;
  return -EINVAL;
 }

 if (val && (mux->flags & CLK_MUX_INDEX_BIT))
  val = ffs(val) - 1;

 if (val && (mux->flags & CLK_MUX_INDEX_ONE))
  val--;

 if (val >= num_parents)
  return -EINVAL;

 return val;
}
