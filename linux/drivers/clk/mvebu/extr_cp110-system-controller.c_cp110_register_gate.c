
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regmap {int dummy; } ;
struct clk_hw {struct clk_init_data* init; } ;
struct cp110_gate_clk {struct clk_hw hw; int bit_idx; struct regmap* regmap; } ;
struct clk_init_data {char const* name; char const** parent_names; int num_parents; int * ops; } ;
typedef int init ;


 int ENOMEM ;
 struct clk_hw* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int clk_hw_register (int *,struct clk_hw*) ;
 int cp110_gate_ops ;
 int kfree (struct cp110_gate_clk*) ;
 struct cp110_gate_clk* kzalloc (int,int ) ;
 int memset (struct clk_init_data*,int ,int) ;

__attribute__((used)) static struct clk_hw *cp110_register_gate(const char *name,
       const char *parent_name,
       struct regmap *regmap, u8 bit_idx)
{
 struct cp110_gate_clk *gate;
 struct clk_hw *hw;
 struct clk_init_data init;
 int ret;

 gate = kzalloc(sizeof(*gate), GFP_KERNEL);
 if (!gate)
  return ERR_PTR(-ENOMEM);

 memset(&init, 0, sizeof(init));

 init.name = name;
 init.ops = &cp110_gate_ops;
 init.parent_names = &parent_name;
 init.num_parents = 1;

 gate->regmap = regmap;
 gate->bit_idx = bit_idx;
 gate->hw.init = &init;

 hw = &gate->hw;
 ret = clk_hw_register(((void*)0), hw);
 if (ret) {
  kfree(gate);
  hw = ERR_PTR(ret);
 }

 return hw;
}
