
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct clk_omap_mux {size_t* table; int flags; int mask; int shift; int latch; int reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {size_t (* clk_readl ) (int *) ;int (* clk_writel ) (size_t,int *) ;} ;


 int CLK_MUX_HIWORD_MASK ;
 int CLK_MUX_INDEX_BIT ;
 int CLK_MUX_INDEX_ONE ;
 int ffs (size_t) ;
 size_t stub1 (int *) ;
 int stub2 (size_t,int *) ;
 int ti_clk_latch (int *,int ) ;
 TYPE_1__* ti_clk_ll_ops ;
 struct clk_omap_mux* to_clk_omap_mux (struct clk_hw*) ;

__attribute__((used)) static int ti_clk_mux_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_omap_mux *mux = to_clk_omap_mux(hw);
 u32 val;

 if (mux->table) {
  index = mux->table[index];
 } else {
  if (mux->flags & CLK_MUX_INDEX_BIT)
   index = (1 << ffs(index));

  if (mux->flags & CLK_MUX_INDEX_ONE)
   index++;
 }

 if (mux->flags & CLK_MUX_HIWORD_MASK) {
  val = mux->mask << (mux->shift + 16);
 } else {
  val = ti_clk_ll_ops->clk_readl(&mux->reg);
  val &= ~(mux->mask << mux->shift);
 }
 val |= index << mux->shift;
 ti_clk_ll_ops->clk_writel(val, &mux->reg);
 ti_clk_latch(&mux->reg, mux->latch);

 return 0;
}
