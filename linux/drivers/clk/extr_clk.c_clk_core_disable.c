
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_core {int enable_count; int flags; struct clk_core* parent; int hw; TYPE_1__* ops; int name; } ;
struct TYPE_2__ {int (* disable ) (int ) ;} ;


 int CLK_IS_CRITICAL ;
 scalar_t__ WARN (int,char*,int ) ;
 int enable_lock ;
 int lockdep_assert_held (int *) ;
 int stub1 (int ) ;
 int trace_clk_disable_complete_rcuidle (struct clk_core*) ;
 int trace_clk_disable_rcuidle (struct clk_core*) ;

__attribute__((used)) static void clk_core_disable(struct clk_core *core)
{
 lockdep_assert_held(&enable_lock);

 if (!core)
  return;

 if (WARN(core->enable_count == 0, "%s already disabled\n", core->name))
  return;

 if (WARN(core->enable_count == 1 && core->flags & CLK_IS_CRITICAL,
     "Disabling critical %s\n", core->name))
  return;

 if (--core->enable_count > 0)
  return;

 trace_clk_disable_rcuidle(core);

 if (core->ops->disable)
  core->ops->disable(core->hw);

 trace_clk_disable_complete_rcuidle(core);

 clk_core_disable(core->parent);
}
