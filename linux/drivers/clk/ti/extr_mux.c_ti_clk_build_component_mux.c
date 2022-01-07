
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_clk_mux {int flags; int num_parents; int reg; int module; int bit_shift; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int offset; int index; } ;
struct clk_omap_mux {int mask; struct clk_hw hw; int flags; TYPE_1__ reg; int latch; int shift; } ;


 int CLKF_INDEX_STARTS_AT_ONE ;
 int CLK_MUX_INDEX_ONE ;
 int EINVAL ;
 int ENOMEM ;
 struct clk_hw* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int fls (int) ;
 struct clk_omap_mux* kzalloc (int,int ) ;

struct clk_hw *ti_clk_build_component_mux(struct ti_clk_mux *setup)
{
 struct clk_omap_mux *mux;
 int num_parents;

 if (!setup)
  return ((void*)0);

 mux = kzalloc(sizeof(*mux), GFP_KERNEL);
 if (!mux)
  return ERR_PTR(-ENOMEM);

 mux->shift = setup->bit_shift;
 mux->latch = -EINVAL;

 mux->reg.index = setup->module;
 mux->reg.offset = setup->reg;

 if (setup->flags & CLKF_INDEX_STARTS_AT_ONE)
  mux->flags |= CLK_MUX_INDEX_ONE;

 num_parents = setup->num_parents;

 mux->mask = num_parents - 1;
 mux->mask = (1 << fls(mux->mask)) - 1;

 return &mux->hw;
}
