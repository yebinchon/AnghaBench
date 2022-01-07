
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct clk_core {size_t num_parents; TYPE_1__* parents; } ;
struct TYPE_2__ {struct clk_core* core; } ;


 int clk_core_fill_parent_index (struct clk_core*,size_t) ;

__attribute__((used)) static struct clk_core *clk_core_get_parent_by_index(struct clk_core *core,
        u8 index)
{
 if (!core || index >= core->num_parents || !core->parents)
  return ((void*)0);

 if (!core->parents[index].core)
  clk_core_fill_parent_index(core, index);

 return core->parents[index].core;
}
