
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_init_data {char const* name; char const** parent_names; int num_parents; int flags; int * ops; } ;
struct clk_hw {struct clk_init_data* init; } ;
struct clk_cpu {struct clk_hw hw; struct clk* step; struct clk* pll; struct clk* mux; struct clk* div; } ;
struct clk {int dummy; } ;


 int CLK_IS_CRITICAL ;
 int ENOMEM ;
 struct clk_hw* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int clk_cpu_ops ;
 int clk_hw_register (int *,struct clk_hw*) ;
 int kfree (struct clk_cpu*) ;
 struct clk_cpu* kzalloc (int,int ) ;

struct clk_hw *imx_clk_hw_cpu(const char *name, const char *parent_name,
  struct clk *div, struct clk *mux, struct clk *pll,
  struct clk *step)
{
 struct clk_cpu *cpu;
 struct clk_hw *hw;
 struct clk_init_data init;
 int ret;

 cpu = kzalloc(sizeof(*cpu), GFP_KERNEL);
 if (!cpu)
  return ERR_PTR(-ENOMEM);

 cpu->div = div;
 cpu->mux = mux;
 cpu->pll = pll;
 cpu->step = step;

 init.name = name;
 init.ops = &clk_cpu_ops;
 init.flags = CLK_IS_CRITICAL;
 init.parent_names = &parent_name;
 init.num_parents = 1;

 cpu->hw.init = &init;
 hw = &cpu->hw;

 ret = clk_hw_register(((void*)0), hw);
 if (ret) {
  kfree(cpu);
  return ERR_PTR(ret);
 }

 return hw;
}
