
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r9a06g032_priv {int dummy; } ;
struct r9a06g032_clkdesc {scalar_t__* div_table; int div_max; int div_min; int reg; int index; int name; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct r9a06g032_clk_div {TYPE_1__ hw; int table_size; scalar_t__* table; int max; int min; int reg; int index; struct r9a06g032_priv* clocks; } ;
struct clk_init_data {char const** parent_names; int num_parents; int flags; int * ops; int name; } ;
struct clk {int dummy; } ;


 unsigned int ARRAY_SIZE (scalar_t__*) ;
 int CLK_SET_RATE_PARENT ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 struct clk* clk_register (int *,TYPE_1__*) ;
 int kfree (struct r9a06g032_clk_div*) ;
 struct r9a06g032_clk_div* kzalloc (int,int ) ;
 int r9a06g032_clk_div_ops ;

__attribute__((used)) static struct clk *
r9a06g032_register_div(struct r9a06g032_priv *clocks,
         const char *parent_name,
         const struct r9a06g032_clkdesc *desc)
{
 struct r9a06g032_clk_div *div;
 struct clk *clk;
 struct clk_init_data init;
 unsigned int i;

 div = kzalloc(sizeof(*div), GFP_KERNEL);
 if (!div)
  return ((void*)0);

 init.name = desc->name;
 init.ops = &r9a06g032_clk_div_ops;
 init.flags = CLK_SET_RATE_PARENT;
 init.parent_names = parent_name ? &parent_name : ((void*)0);
 init.num_parents = parent_name ? 1 : 0;

 div->clocks = clocks;
 div->index = desc->index;
 div->reg = desc->reg;
 div->hw.init = &init;
 div->min = desc->div_min;
 div->max = desc->div_max;

 for (i = 0; i < ARRAY_SIZE(div->table) &&
      i < ARRAY_SIZE(desc->div_table) && desc->div_table[i]; i++) {
  div->table[div->table_size++] = desc->div_table[i];
 }

 clk = clk_register(((void*)0), &div->hw);
 if (IS_ERR(clk)) {
  kfree(div);
  return ((void*)0);
 }
 return clk;
}
