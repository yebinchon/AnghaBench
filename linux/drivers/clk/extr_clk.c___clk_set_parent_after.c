
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_core {int flags; scalar_t__ prepare_count; } ;


 int CLK_OPS_PARENT_ENABLE ;
 int clk_core_disable_lock (struct clk_core*) ;
 int clk_core_disable_unprepare (struct clk_core*) ;

__attribute__((used)) static void __clk_set_parent_after(struct clk_core *core,
       struct clk_core *parent,
       struct clk_core *old_parent)
{




 if (core->prepare_count) {
  clk_core_disable_lock(core);
  clk_core_disable_unprepare(old_parent);
 }


 if (core->flags & CLK_OPS_PARENT_ENABLE) {
  clk_core_disable_unprepare(parent);
  clk_core_disable_unprepare(old_parent);
 }
}
