
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r9a06g032_priv {int dummy; } ;
struct TYPE_3__ {int sel; } ;
struct r9a06g032_clkdesc {TYPE_1__ dual; int index; int name; } ;
struct TYPE_4__ {struct clk_init_data* init; } ;
struct r9a06g032_clk_bitsel {TYPE_2__ hw; int selector; int index; struct r9a06g032_priv* clocks; } ;
struct clk_init_data {char const** parent_names; int num_parents; int flags; int * ops; int name; } ;
struct clk {int dummy; } ;


 int CLK_SET_RATE_PARENT ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int clk_bitselect_ops ;
 struct clk* clk_register (int *,TYPE_2__*) ;
 int kfree (struct r9a06g032_clk_bitsel*) ;
 struct r9a06g032_clk_bitsel* kzalloc (int,int ) ;

__attribute__((used)) static struct clk *
r9a06g032_register_bitsel(struct r9a06g032_priv *clocks,
     const char *parent_name,
     const struct r9a06g032_clkdesc *desc)
{
 struct clk *clk;
 struct r9a06g032_clk_bitsel *g;
 struct clk_init_data init;
 const char *names[2];


 g = kzalloc(sizeof(*g), GFP_KERNEL);
 if (!g)
  return ((void*)0);

 names[0] = parent_name;
 names[1] = "clk_pll_usb";

 init.name = desc->name;
 init.ops = &clk_bitselect_ops;
 init.flags = CLK_SET_RATE_PARENT;
 init.parent_names = names;
 init.num_parents = 2;

 g->clocks = clocks;
 g->index = desc->index;
 g->selector = desc->dual.sel;
 g->hw.init = &init;

 clk = clk_register(((void*)0), &g->hw);
 if (IS_ERR(clk)) {
  kfree(g);
  return ((void*)0);
 }
 return clk;
}
