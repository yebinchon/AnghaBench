
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_core {int num_parents; int name; TYPE_1__* parents; struct clk_core* parent; } ;
struct clk {struct clk_core* core; } ;
struct TYPE_2__ {int name; } ;


 int strcmp (int ,int ) ;

bool clk_has_parent(struct clk *clk, struct clk *parent)
{
 struct clk_core *core, *parent_core;
 int i;


 if (!clk || !parent)
  return 1;

 core = clk->core;
 parent_core = parent->core;


 if (core->parent == parent_core)
  return 1;

 for (i = 0; i < core->num_parents; i++)
  if (!strcmp(core->parents[i].name, parent_core->name))
   return 1;

 return 0;
}
