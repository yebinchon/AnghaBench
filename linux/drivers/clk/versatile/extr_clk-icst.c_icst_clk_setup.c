
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct icst_params {int ctype; TYPE_1__ hw; int lockreg_off; int vcoreg_off; struct icst_params* params; struct regmap* map; } ;
struct device {int dummy; } ;
struct clk_init_data {char const* name; char const** parent_names; int num_parents; scalar_t__ flags; int * ops; } ;
struct clk_icst_desc {int lock_offset; int vco_offset; int params; } ;
struct clk_icst {int ctype; TYPE_1__ hw; int lockreg_off; int vcoreg_off; struct clk_icst* params; struct regmap* map; } ;
struct clk {int dummy; } ;
typedef enum icst_control_type { ____Placeholder_icst_control_type } icst_control_type ;


 int ENOMEM ;
 struct clk* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 struct clk* clk_register (struct device*,TYPE_1__*) ;
 int icst_ops ;
 int kfree (struct icst_params*) ;
 struct icst_params* kmemdup (int ,int,int ) ;
 struct icst_params* kzalloc (int,int ) ;

__attribute__((used)) static struct clk *icst_clk_setup(struct device *dev,
      const struct clk_icst_desc *desc,
      const char *name,
      const char *parent_name,
      struct regmap *map,
      enum icst_control_type ctype)
{
 struct clk *clk;
 struct clk_icst *icst;
 struct clk_init_data init;
 struct icst_params *pclone;

 icst = kzalloc(sizeof(*icst), GFP_KERNEL);
 if (!icst)
  return ERR_PTR(-ENOMEM);

 pclone = kmemdup(desc->params, sizeof(*pclone), GFP_KERNEL);
 if (!pclone) {
  kfree(icst);
  return ERR_PTR(-ENOMEM);
 }

 init.name = name;
 init.ops = &icst_ops;
 init.flags = 0;
 init.parent_names = (parent_name ? &parent_name : ((void*)0));
 init.num_parents = (parent_name ? 1 : 0);
 icst->map = map;
 icst->hw.init = &init;
 icst->params = pclone;
 icst->vcoreg_off = desc->vco_offset;
 icst->lockreg_off = desc->lock_offset;
 icst->ctype = ctype;

 clk = clk_register(dev, &icst->hw);
 if (IS_ERR(clk)) {
  kfree(pclone);
  kfree(icst);
 }

 return clk;
}
