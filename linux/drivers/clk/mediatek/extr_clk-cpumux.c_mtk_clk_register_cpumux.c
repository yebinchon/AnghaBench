
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct mtk_composite {int mux_width; int mux_shift; int mux_reg; int flags; int num_parents; int parent_names; int name; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct mtk_clk_cpumux {TYPE_1__ hw; struct regmap* regmap; scalar_t__ mask; int shift; int reg; } ;
struct clk_init_data {int flags; int num_parents; int parent_names; int * ops; int name; } ;
struct clk {int dummy; } ;


 scalar_t__ BIT (int ) ;
 int ENOMEM ;
 struct clk* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int clk_cpumux_ops ;
 struct clk* clk_register (int *,TYPE_1__*) ;
 int kfree (struct mtk_clk_cpumux*) ;
 struct mtk_clk_cpumux* kzalloc (int,int ) ;

__attribute__((used)) static struct clk *
mtk_clk_register_cpumux(const struct mtk_composite *mux,
   struct regmap *regmap)
{
 struct mtk_clk_cpumux *cpumux;
 struct clk *clk;
 struct clk_init_data init;

 cpumux = kzalloc(sizeof(*cpumux), GFP_KERNEL);
 if (!cpumux)
  return ERR_PTR(-ENOMEM);

 init.name = mux->name;
 init.ops = &clk_cpumux_ops;
 init.parent_names = mux->parent_names;
 init.num_parents = mux->num_parents;
 init.flags = mux->flags;

 cpumux->reg = mux->mux_reg;
 cpumux->shift = mux->mux_shift;
 cpumux->mask = BIT(mux->mux_width) - 1;
 cpumux->regmap = regmap;
 cpumux->hw.init = &init;

 clk = clk_register(((void*)0), &cpumux->hw);
 if (IS_ERR(clk))
  kfree(cpumux);

 return clk;
}
