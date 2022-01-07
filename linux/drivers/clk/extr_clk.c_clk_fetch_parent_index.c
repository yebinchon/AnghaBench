
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_core {int num_parents; scalar_t__ hw; TYPE_1__* parents; int name; } ;
struct TYPE_2__ {scalar_t__ hw; struct clk_core* core; scalar_t__ name; } ;


 int EINVAL ;
 struct clk_core* clk_core_get (struct clk_core*,int) ;
 int strcmp (int ,scalar_t__) ;

__attribute__((used)) static int clk_fetch_parent_index(struct clk_core *core,
      struct clk_core *parent)
{
 int i;

 if (!parent)
  return -EINVAL;

 for (i = 0; i < core->num_parents; i++) {

  if (core->parents[i].core == parent)
   return i;


  if (core->parents[i].core)
   continue;


  if (core->parents[i].hw) {
   if (core->parents[i].hw == parent->hw)
    break;


   continue;
  }


  if (parent == clk_core_get(core, i))
   break;


  if (core->parents[i].name &&
      !strcmp(parent->name, core->parents[i].name))
   break;
 }

 if (i == core->num_parents)
  return -EINVAL;

 core->parents[i].core = parent;
 return i;
}
