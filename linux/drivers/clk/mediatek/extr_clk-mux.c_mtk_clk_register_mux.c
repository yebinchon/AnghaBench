
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct mtk_mux {int flags; int ops; int num_parents; int parent_names; int name; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct mtk_clk_mux {TYPE_1__ hw; int * lock; struct mtk_mux const* data; struct regmap* regmap; } ;
struct clk_init_data {int flags; int ops; int num_parents; int parent_names; int name; } ;
struct clk {int dummy; } ;
typedef int spinlock_t ;


 int CLK_SET_RATE_PARENT ;
 int ENOMEM ;
 struct clk* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 struct clk* clk_register (int *,TYPE_1__*) ;
 int kfree (struct mtk_clk_mux*) ;
 struct mtk_clk_mux* kzalloc (int,int ) ;

struct clk *mtk_clk_register_mux(const struct mtk_mux *mux,
     struct regmap *regmap,
     spinlock_t *lock)
{
 struct mtk_clk_mux *clk_mux;
 struct clk_init_data init;
 struct clk *clk;

 clk_mux = kzalloc(sizeof(*clk_mux), GFP_KERNEL);
 if (!clk_mux)
  return ERR_PTR(-ENOMEM);

 init.name = mux->name;
 init.flags = mux->flags | CLK_SET_RATE_PARENT;
 init.parent_names = mux->parent_names;
 init.num_parents = mux->num_parents;
 init.ops = mux->ops;

 clk_mux->regmap = regmap;
 clk_mux->data = mux;
 clk_mux->lock = lock;
 clk_mux->hw.init = &init;

 clk = clk_register(((void*)0), &clk_mux->hw);
 if (IS_ERR(clk)) {
  kfree(clk_mux);
  return clk;
 }

 return clk;
}
