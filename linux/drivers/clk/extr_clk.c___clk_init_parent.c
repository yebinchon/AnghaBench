
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct clk_core {int num_parents; int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_parent ) (int ) ;} ;


 struct clk_core* clk_core_get_parent_by_index (struct clk_core*,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static struct clk_core *__clk_init_parent(struct clk_core *core)
{
 u8 index = 0;

 if (core->num_parents > 1 && core->ops->get_parent)
  index = core->ops->get_parent(core->hw);

 return clk_core_get_parent_by_index(core, index);
}
