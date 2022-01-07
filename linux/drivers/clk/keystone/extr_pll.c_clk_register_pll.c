
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct clk_pll_data {int dummy; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct clk_pll {TYPE_1__ hw; struct clk_pll_data* pll_data; } ;
struct clk_init_data {char const* name; char const** parent_names; int num_parents; scalar_t__ flags; int * ops; } ;
struct clk {int dummy; } ;


 int ENOMEM ;
 struct clk* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int clk_pll_ops ;
 struct clk* clk_register (int *,TYPE_1__*) ;
 int kfree (struct clk_pll*) ;
 struct clk_pll* kzalloc (int,int ) ;

__attribute__((used)) static struct clk *clk_register_pll(struct device *dev,
   const char *name,
   const char *parent_name,
   struct clk_pll_data *pll_data)
{
 struct clk_init_data init;
 struct clk_pll *pll;
 struct clk *clk;

 pll = kzalloc(sizeof(*pll), GFP_KERNEL);
 if (!pll)
  return ERR_PTR(-ENOMEM);

 init.name = name;
 init.ops = &clk_pll_ops;
 init.flags = 0;
 init.parent_names = (parent_name ? &parent_name : ((void*)0));
 init.num_parents = (parent_name ? 1 : 0);

 pll->pll_data = pll_data;
 pll->hw.init = &init;

 clk = clk_register(((void*)0), &pll->hw);
 if (IS_ERR(clk))
  goto out;

 return clk;
out:
 kfree(pll);
 return ((void*)0);
}
