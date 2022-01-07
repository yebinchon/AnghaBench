
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct clk_hw {struct clk_init_data* init; } ;
struct zynqmp_clk_divider {int is_frac; struct clk_hw hw; int div_type; int clk_id; int flags; } ;
struct clock_topology {int flag; int type; int type_flag; } ;
struct clk_init_data {char const* name; int flags; char const* const* parent_names; int num_parents; int * ops; } ;


 int CLK_FRAC ;
 int ENOMEM ;
 struct clk_hw* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int clk_hw_register (int *,struct clk_hw*) ;
 int kfree (struct zynqmp_clk_divider*) ;
 struct zynqmp_clk_divider* kzalloc (int,int ) ;
 int zynqmp_clk_divider_ops ;

struct clk_hw *zynqmp_clk_register_divider(const char *name,
        u32 clk_id,
        const char * const *parents,
        u8 num_parents,
        const struct clock_topology *nodes)
{
 struct zynqmp_clk_divider *div;
 struct clk_hw *hw;
 struct clk_init_data init;
 int ret;


 div = kzalloc(sizeof(*div), GFP_KERNEL);
 if (!div)
  return ERR_PTR(-ENOMEM);

 init.name = name;
 init.ops = &zynqmp_clk_divider_ops;

 init.flags = nodes->flag & ~CLK_FRAC;
 init.parent_names = parents;
 init.num_parents = 1;


 div->is_frac = !!(nodes->flag & CLK_FRAC);
 div->flags = nodes->type_flag;
 div->hw.init = &init;
 div->clk_id = clk_id;
 div->div_type = nodes->type;

 hw = &div->hw;
 ret = clk_hw_register(((void*)0), hw);
 if (ret) {
  kfree(div);
  hw = ERR_PTR(ret);
 }

 return hw;
}
