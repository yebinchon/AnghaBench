
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct device {int dummy; } ;
struct clk_omap_reg {int dummy; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct clk_omap_divider {int shift; int width; int flags; TYPE_1__ hw; struct clk_div_table const* table; int latch; int reg; } ;
struct clk_init_data {char const* name; unsigned long flags; char const** parent_names; int num_parents; int * ops; } ;
struct clk_div_table {int dummy; } ;
struct clk {int dummy; } ;
typedef int s8 ;


 int CLK_DIVIDER_HIWORD_MASK ;
 int EINVAL ;
 int ENOMEM ;
 struct clk* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int kfree (struct clk_omap_divider*) ;
 struct clk_omap_divider* kzalloc (int,int ) ;
 int memcpy (int *,struct clk_omap_reg*,int) ;
 int pr_warn (char*) ;
 int ti_clk_divider_ops ;
 struct clk* ti_clk_register (struct device*,TYPE_1__*,char const*) ;

__attribute__((used)) static struct clk *_register_divider(struct device *dev, const char *name,
         const char *parent_name,
         unsigned long flags,
         struct clk_omap_reg *reg,
         u8 shift, u8 width, s8 latch,
         u8 clk_divider_flags,
         const struct clk_div_table *table)
{
 struct clk_omap_divider *div;
 struct clk *clk;
 struct clk_init_data init;

 if (clk_divider_flags & CLK_DIVIDER_HIWORD_MASK) {
  if (width + shift > 16) {
   pr_warn("divider value exceeds LOWORD field\n");
   return ERR_PTR(-EINVAL);
  }
 }


 div = kzalloc(sizeof(*div), GFP_KERNEL);
 if (!div)
  return ERR_PTR(-ENOMEM);

 init.name = name;
 init.ops = &ti_clk_divider_ops;
 init.flags = flags;
 init.parent_names = (parent_name ? &parent_name : ((void*)0));
 init.num_parents = (parent_name ? 1 : 0);


 memcpy(&div->reg, reg, sizeof(*reg));
 div->shift = shift;
 div->width = width;
 div->latch = latch;
 div->flags = clk_divider_flags;
 div->hw.init = &init;
 div->table = table;


 clk = ti_clk_register(dev, &div->hw, name);

 if (IS_ERR(clk))
  kfree(div);

 return clk;
}
