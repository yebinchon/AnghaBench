
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct r9a06g032_priv {int dummy; } ;
struct r9a06g032_clkdesc {int name; int gate; int index; } ;
struct TYPE_3__ {struct clk_init_data* init; } ;
struct r9a06g032_clk_gate {TYPE_1__ hw; int gate; int index; struct r9a06g032_priv* clocks; } ;
struct clk_init_data {char const** parent_names; int num_parents; int flags; int * ops; int name; } ;
struct clk {int dummy; } ;


 int CLK_IS_CRITICAL ;
 int CLK_SET_RATE_PARENT ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 struct clk* clk_register (int *,TYPE_1__*) ;
 int kfree (struct r9a06g032_clk_gate*) ;
 struct r9a06g032_clk_gate* kzalloc (int,int ) ;
 int pr_debug (char*,int ) ;
 scalar_t__ r9a06g032_clk_gate_is_enabled (TYPE_1__*) ;
 int r9a06g032_clk_gate_ops ;

__attribute__((used)) static struct clk *
r9a06g032_register_gate(struct r9a06g032_priv *clocks,
   const char *parent_name,
   const struct r9a06g032_clkdesc *desc)
{
 struct clk *clk;
 struct r9a06g032_clk_gate *g;
 struct clk_init_data init;

 g = kzalloc(sizeof(*g), GFP_KERNEL);
 if (!g)
  return ((void*)0);

 init.name = desc->name;
 init.ops = &r9a06g032_clk_gate_ops;
 init.flags = CLK_SET_RATE_PARENT;
 init.parent_names = parent_name ? &parent_name : ((void*)0);
 init.num_parents = parent_name ? 1 : 0;

 g->clocks = clocks;
 g->index = desc->index;
 g->gate = desc->gate;
 g->hw.init = &init;






 if (r9a06g032_clk_gate_is_enabled(&g->hw)) {
  init.flags |= CLK_IS_CRITICAL;
  pr_debug("%s was enabled, making read-only\n", desc->name);
 }

 clk = clk_register(((void*)0), &g->hw);
 if (IS_ERR(clk)) {
  kfree(g);
  return ((void*)0);
 }
 return clk;
}
