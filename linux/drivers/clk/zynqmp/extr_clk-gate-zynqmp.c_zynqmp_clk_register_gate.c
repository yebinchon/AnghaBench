
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct clk_hw {struct clk_init_data* init; } ;
struct zynqmp_clk_gate {struct clk_hw hw; int clk_id; int flags; } ;
struct clock_topology {int type_flag; int flag; } ;
struct clk_init_data {char const* name; char const* const* parent_names; int num_parents; int flags; int * ops; } ;


 int ENOMEM ;
 struct clk_hw* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int clk_hw_register (int *,struct clk_hw*) ;
 int kfree (struct zynqmp_clk_gate*) ;
 struct zynqmp_clk_gate* kzalloc (int,int ) ;
 int zynqmp_clk_gate_ops ;

struct clk_hw *zynqmp_clk_register_gate(const char *name, u32 clk_id,
     const char * const *parents,
     u8 num_parents,
     const struct clock_topology *nodes)
{
 struct zynqmp_clk_gate *gate;
 struct clk_hw *hw;
 int ret;
 struct clk_init_data init;


 gate = kzalloc(sizeof(*gate), GFP_KERNEL);
 if (!gate)
  return ERR_PTR(-ENOMEM);

 init.name = name;
 init.ops = &zynqmp_clk_gate_ops;
 init.flags = nodes->flag;
 init.parent_names = parents;
 init.num_parents = 1;


 gate->flags = nodes->type_flag;
 gate->hw.init = &init;
 gate->clk_id = clk_id;

 hw = &gate->hw;
 ret = clk_hw_register(((void*)0), hw);
 if (ret) {
  kfree(gate);
  hw = ERR_PTR(ret);
 }

 return hw;
}
