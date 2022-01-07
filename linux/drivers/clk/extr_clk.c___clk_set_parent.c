
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct clk_core {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_parent ) (int ,int ) ;} ;


 int __clk_set_parent_after (struct clk_core*,struct clk_core*,struct clk_core*) ;
 struct clk_core* __clk_set_parent_before (struct clk_core*,struct clk_core*) ;
 unsigned long clk_enable_lock () ;
 int clk_enable_unlock (unsigned long) ;
 int clk_reparent (struct clk_core*,struct clk_core*) ;
 int stub1 (int ,int ) ;
 int trace_clk_set_parent (struct clk_core*,struct clk_core*) ;
 int trace_clk_set_parent_complete (struct clk_core*,struct clk_core*) ;

__attribute__((used)) static int __clk_set_parent(struct clk_core *core, struct clk_core *parent,
       u8 p_index)
{
 unsigned long flags;
 int ret = 0;
 struct clk_core *old_parent;

 old_parent = __clk_set_parent_before(core, parent);

 trace_clk_set_parent(core, parent);


 if (parent && core->ops->set_parent)
  ret = core->ops->set_parent(core->hw, p_index);

 trace_clk_set_parent_complete(core, parent);

 if (ret) {
  flags = clk_enable_lock();
  clk_reparent(core, old_parent);
  clk_enable_unlock(flags);
  __clk_set_parent_after(core, old_parent, parent);

  return ret;
 }

 __clk_set_parent_after(core, parent, old_parent);

 return 0;
}
