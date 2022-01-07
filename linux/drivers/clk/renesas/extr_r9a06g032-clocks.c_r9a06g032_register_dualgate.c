
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct r9a06g032_priv {int dummy; } ;
struct TYPE_6__ {int r2; int g2; int r1; int g1; } ;
struct r9a06g032_clkdesc {int name; TYPE_2__ dual; int index; } ;
struct TYPE_7__ {struct clk_init_data* init; } ;
struct r9a06g032_clk_dualgate {TYPE_3__ hw; TYPE_1__* gate; int selector; int index; struct r9a06g032_priv* clocks; } ;
struct clk_init_data {char const** parent_names; int num_parents; int flags; int * ops; int name; } ;
struct clk {int dummy; } ;
struct TYPE_5__ {int reset; int gate; } ;


 int CLK_IS_CRITICAL ;
 int CLK_SET_RATE_PARENT ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 struct clk* clk_register (int *,TYPE_3__*) ;
 int kfree (struct r9a06g032_clk_dualgate*) ;
 struct r9a06g032_clk_dualgate* kzalloc (int,int ) ;
 int pr_debug (char*,int ) ;
 scalar_t__ r9a06g032_clk_dualgate_is_enabled (TYPE_3__*) ;
 int r9a06g032_clk_dualgate_ops ;

__attribute__((used)) static struct clk *
r9a06g032_register_dualgate(struct r9a06g032_priv *clocks,
       const char *parent_name,
       const struct r9a06g032_clkdesc *desc,
       uint16_t sel)
{
 struct r9a06g032_clk_dualgate *g;
 struct clk *clk;
 struct clk_init_data init;


 g = kzalloc(sizeof(*g), GFP_KERNEL);
 if (!g)
  return ((void*)0);
 g->clocks = clocks;
 g->index = desc->index;
 g->selector = sel;
 g->gate[0].gate = desc->dual.g1;
 g->gate[0].reset = desc->dual.r1;
 g->gate[1].gate = desc->dual.g2;
 g->gate[1].reset = desc->dual.r2;

 init.name = desc->name;
 init.ops = &r9a06g032_clk_dualgate_ops;
 init.flags = CLK_SET_RATE_PARENT;
 init.parent_names = &parent_name;
 init.num_parents = 1;
 g->hw.init = &init;





 if (r9a06g032_clk_dualgate_is_enabled(&g->hw)) {
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
