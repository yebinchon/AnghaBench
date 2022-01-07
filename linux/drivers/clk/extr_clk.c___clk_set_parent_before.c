
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_core {int flags; scalar_t__ prepare_count; struct clk_core* parent; } ;


 int CLK_OPS_PARENT_ENABLE ;
 int clk_core_enable_lock (struct clk_core*) ;
 int clk_core_prepare_enable (struct clk_core*) ;
 unsigned long clk_enable_lock () ;
 int clk_enable_unlock (unsigned long) ;
 int clk_reparent (struct clk_core*,struct clk_core*) ;

__attribute__((used)) static struct clk_core *__clk_set_parent_before(struct clk_core *core,
        struct clk_core *parent)
{
 unsigned long flags;
 struct clk_core *old_parent = core->parent;
 if (core->flags & CLK_OPS_PARENT_ENABLE) {
  clk_core_prepare_enable(old_parent);
  clk_core_prepare_enable(parent);
 }


 if (core->prepare_count) {
  clk_core_prepare_enable(parent);
  clk_core_enable_lock(core);
 }


 flags = clk_enable_lock();
 clk_reparent(core, parent);
 clk_enable_unlock(flags);

 return old_parent;
}
