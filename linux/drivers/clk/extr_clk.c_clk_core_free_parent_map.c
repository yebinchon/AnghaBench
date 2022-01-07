
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_core {int num_parents; TYPE_1__* parents; } ;
struct TYPE_2__ {int fw_name; int name; } ;


 int kfree (TYPE_1__*) ;
 int kfree_const (int ) ;

__attribute__((used)) static void clk_core_free_parent_map(struct clk_core *core)
{
 int i = core->num_parents;

 if (!core->num_parents)
  return;

 while (--i >= 0) {
  kfree_const(core->parents[i].name);
  kfree_const(core->parents[i].fw_name);
 }

 kfree(core->parents);
}
