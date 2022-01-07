
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct device {int dummy; } ;
struct clk_omap_reg {int dummy; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct clk_omap_mux {TYPE_1__ hw; int * table; void* flags; int latch; int mask; void* shift; int reg; } ;
struct clk_init_data {char const* name; unsigned long flags; char const* const* parent_names; void* num_parents; int * ops; } ;
struct clk {int dummy; } ;
typedef int s8 ;


 int ENOMEM ;
 struct clk* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int kfree (struct clk_omap_mux*) ;
 struct clk_omap_mux* kzalloc (int,int ) ;
 int memcpy (int *,struct clk_omap_reg*,int) ;
 int ti_clk_mux_ops ;
 struct clk* ti_clk_register (struct device*,TYPE_1__*,char const*) ;

__attribute__((used)) static struct clk *_register_mux(struct device *dev, const char *name,
     const char * const *parent_names,
     u8 num_parents, unsigned long flags,
     struct clk_omap_reg *reg, u8 shift, u32 mask,
     s8 latch, u8 clk_mux_flags, u32 *table)
{
 struct clk_omap_mux *mux;
 struct clk *clk;
 struct clk_init_data init;


 mux = kzalloc(sizeof(*mux), GFP_KERNEL);
 if (!mux)
  return ERR_PTR(-ENOMEM);

 init.name = name;
 init.ops = &ti_clk_mux_ops;
 init.flags = flags;
 init.parent_names = parent_names;
 init.num_parents = num_parents;


 memcpy(&mux->reg, reg, sizeof(*reg));
 mux->shift = shift;
 mux->mask = mask;
 mux->latch = latch;
 mux->flags = clk_mux_flags;
 mux->table = table;
 mux->hw.init = &init;

 clk = ti_clk_register(dev, &mux->hw, name);

 if (IS_ERR(clk))
  kfree(mux);

 return clk;
}
