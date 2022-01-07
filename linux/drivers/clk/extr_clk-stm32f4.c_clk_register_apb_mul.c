
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct device {int dummy; } ;
struct clk_init_data {char const* name; unsigned long flags; char const** parent_names; int num_parents; int * ops; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct clk_apb_mul {TYPE_1__ hw; int bit_idx; } ;
struct clk {int dummy; } ;


 int ENOMEM ;
 struct clk* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int clk_apb_mul_factor_ops ;
 struct clk* clk_register (struct device*,TYPE_1__*) ;
 int kfree (struct clk_apb_mul*) ;
 struct clk_apb_mul* kzalloc (int,int ) ;

__attribute__((used)) static struct clk *clk_register_apb_mul(struct device *dev, const char *name,
     const char *parent_name,
     unsigned long flags, u8 bit_idx)
{
 struct clk_apb_mul *am;
 struct clk_init_data init;
 struct clk *clk;

 am = kzalloc(sizeof(*am), GFP_KERNEL);
 if (!am)
  return ERR_PTR(-ENOMEM);

 am->bit_idx = bit_idx;
 am->hw.init = &init;

 init.name = name;
 init.ops = &clk_apb_mul_factor_ops;
 init.flags = flags;
 init.parent_names = &parent_name;
 init.num_parents = 1;

 clk = clk_register(dev, &am->hw);

 if (IS_ERR(clk))
  kfree(am);

 return clk;
}
