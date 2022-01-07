
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_init_data {int num_parents; char const* name; int flags; int * ops; int * parent_names; } ;
struct clk_hw {struct clk_init_data* init; } ;
struct bcm2835_pll_divider_data {int fixed_divider; char* name; int flags; scalar_t__ a2w_reg; int source_pll; } ;
struct TYPE_2__ {struct clk_hw hw; int * table; int * lock; int flags; int width; int shift; scalar_t__ reg; } ;
struct bcm2835_pll_divider {TYPE_1__ div; struct bcm2835_pll_divider_data const* data; struct bcm2835_cprman* cprman; } ;
struct bcm2835_cprman {int dev; int regs_lock; scalar_t__ regs; } ;
typedef int init ;


 int A2W_PLL_DIV_BITS ;
 int A2W_PLL_DIV_SHIFT ;
 int CLK_DIVIDER_MAX_AT_ZERO ;
 int CLK_IGNORE_UNUSED ;
 int CLK_SET_RATE_PARENT ;
 struct clk_hw* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int bcm2835_pll_divider_clk_ops ;
 struct clk_hw* clk_hw_register_fixed_factor (int ,char*,char const*,int ,int,int) ;
 int devm_clk_hw_register (int ,struct clk_hw*) ;
 char* devm_kasprintf (int ,int ,char*,char*) ;
 struct bcm2835_pll_divider* devm_kzalloc (int ,int,int ) ;
 int memset (struct clk_init_data*,int ,int) ;

__attribute__((used)) static struct clk_hw *
bcm2835_register_pll_divider(struct bcm2835_cprman *cprman,
        const struct bcm2835_pll_divider_data *data)
{
 struct bcm2835_pll_divider *divider;
 struct clk_init_data init;
 const char *divider_name;
 int ret;

 if (data->fixed_divider != 1) {
  divider_name = devm_kasprintf(cprman->dev, GFP_KERNEL,
           "%s_prediv", data->name);
  if (!divider_name)
   return ((void*)0);
 } else {
  divider_name = data->name;
 }

 memset(&init, 0, sizeof(init));

 init.parent_names = &data->source_pll;
 init.num_parents = 1;
 init.name = divider_name;
 init.ops = &bcm2835_pll_divider_clk_ops;
 init.flags = data->flags | CLK_IGNORE_UNUSED;

 divider = devm_kzalloc(cprman->dev, sizeof(*divider), GFP_KERNEL);
 if (!divider)
  return ((void*)0);

 divider->div.reg = cprman->regs + data->a2w_reg;
 divider->div.shift = A2W_PLL_DIV_SHIFT;
 divider->div.width = A2W_PLL_DIV_BITS;
 divider->div.flags = CLK_DIVIDER_MAX_AT_ZERO;
 divider->div.lock = &cprman->regs_lock;
 divider->div.hw.init = &init;
 divider->div.table = ((void*)0);

 divider->cprman = cprman;
 divider->data = data;

 ret = devm_clk_hw_register(cprman->dev, &divider->div.hw);
 if (ret)
  return ERR_PTR(ret);





 if (data->fixed_divider != 1) {
  return clk_hw_register_fixed_factor(cprman->dev, data->name,
          divider_name,
          CLK_SET_RATE_PARENT,
          1,
          data->fixed_divider);
 }

 return &divider->div.hw;
}
