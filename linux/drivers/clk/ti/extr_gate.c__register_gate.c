
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct device {int dummy; } ;
struct clk_ops {int dummy; } ;
struct clk_omap_reg {int dummy; } ;
struct clk_init_data {char const* name; char const** parent_names; int num_parents; unsigned long flags; struct clk_ops const* ops; int * member_0; } ;
struct clk_hw_omap_ops {int dummy; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct clk_hw_omap {TYPE_1__ hw; void* flags; struct clk_hw_omap_ops const* ops; void* enable_bit; int enable_reg; } ;
struct clk {int dummy; } ;


 int ENOMEM ;
 struct clk* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int kfree (struct clk_hw_omap*) ;
 struct clk_hw_omap* kzalloc (int,int ) ;
 int memcpy (int *,struct clk_omap_reg*,int) ;
 struct clk* ti_clk_register_omap_hw (int *,TYPE_1__*,char const*) ;

__attribute__((used)) static struct clk *_register_gate(struct device *dev, const char *name,
      const char *parent_name, unsigned long flags,
      struct clk_omap_reg *reg, u8 bit_idx,
      u8 clk_gate_flags, const struct clk_ops *ops,
      const struct clk_hw_omap_ops *hw_ops)
{
 struct clk_init_data init = { ((void*)0) };
 struct clk_hw_omap *clk_hw;
 struct clk *clk;

 clk_hw = kzalloc(sizeof(*clk_hw), GFP_KERNEL);
 if (!clk_hw)
  return ERR_PTR(-ENOMEM);

 clk_hw->hw.init = &init;

 init.name = name;
 init.ops = ops;

 memcpy(&clk_hw->enable_reg, reg, sizeof(*reg));
 clk_hw->enable_bit = bit_idx;
 clk_hw->ops = hw_ops;

 clk_hw->flags = clk_gate_flags;

 init.parent_names = &parent_name;
 init.num_parents = 1;

 init.flags = flags;

 clk = ti_clk_register_omap_hw(((void*)0), &clk_hw->hw, name);

 if (IS_ERR(clk))
  kfree(clk_hw);

 return clk;
}
