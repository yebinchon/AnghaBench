
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_init_data {int num_parents; int flags; int * ops; int name; int * parent_names; } ;
struct clk_hw {struct clk_init_data* init; } ;
struct bcm2835_pll_data {int name; } ;
struct bcm2835_pll {struct clk_hw hw; struct bcm2835_pll_data const* data; struct bcm2835_cprman* cprman; } ;
struct bcm2835_cprman {int dev; int * real_parent_names; } ;
typedef int init ;


 int CLK_IGNORE_UNUSED ;
 int GFP_KERNEL ;
 int bcm2835_pll_clk_ops ;
 int devm_clk_hw_register (int ,struct clk_hw*) ;
 struct bcm2835_pll* kzalloc (int,int ) ;
 int memset (struct clk_init_data*,int ,int) ;

__attribute__((used)) static struct clk_hw *bcm2835_register_pll(struct bcm2835_cprman *cprman,
        const struct bcm2835_pll_data *data)
{
 struct bcm2835_pll *pll;
 struct clk_init_data init;
 int ret;

 memset(&init, 0, sizeof(init));


 init.parent_names = &cprman->real_parent_names[0];
 init.num_parents = 1;
 init.name = data->name;
 init.ops = &bcm2835_pll_clk_ops;
 init.flags = CLK_IGNORE_UNUSED;

 pll = kzalloc(sizeof(*pll), GFP_KERNEL);
 if (!pll)
  return ((void*)0);

 pll->cprman = cprman;
 pll->data = data;
 pll->hw.init = &init;

 ret = devm_clk_hw_register(cprman->dev, &pll->hw);
 if (ret)
  return ((void*)0);
 return &pll->hw;
}
