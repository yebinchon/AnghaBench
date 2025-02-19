
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct regmap {int dummy; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct mtk_clk_gate {int set_ofs; int clr_ofs; int sta_ofs; TYPE_1__ hw; int bit; struct regmap* regmap; } ;
struct device {int dummy; } ;
struct clk_ops {int dummy; } ;
struct clk_init_data {char const* name; unsigned long flags; char const** parent_names; int num_parents; struct clk_ops const* ops; } ;
struct clk {int dummy; } ;


 unsigned long CLK_SET_RATE_PARENT ;
 int ENOMEM ;
 struct clk* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 struct clk* clk_register (struct device*,TYPE_1__*) ;
 int kfree (struct mtk_clk_gate*) ;
 struct mtk_clk_gate* kzalloc (int,int ) ;

struct clk *mtk_clk_register_gate(
  const char *name,
  const char *parent_name,
  struct regmap *regmap,
  int set_ofs,
  int clr_ofs,
  int sta_ofs,
  u8 bit,
  const struct clk_ops *ops,
  unsigned long flags,
  struct device *dev)
{
 struct mtk_clk_gate *cg;
 struct clk *clk;
 struct clk_init_data init = {};

 cg = kzalloc(sizeof(*cg), GFP_KERNEL);
 if (!cg)
  return ERR_PTR(-ENOMEM);

 init.name = name;
 init.flags = flags | CLK_SET_RATE_PARENT;
 init.parent_names = parent_name ? &parent_name : ((void*)0);
 init.num_parents = parent_name ? 1 : 0;
 init.ops = ops;

 cg->regmap = regmap;
 cg->set_ofs = set_ofs;
 cg->clr_ofs = clr_ofs;
 cg->sta_ofs = sta_ofs;
 cg->bit = bit;

 cg->hw.init = &init;

 clk = clk_register(dev, &cg->hw);
 if (IS_ERR(clk))
  kfree(cg);

 return clk;
}
