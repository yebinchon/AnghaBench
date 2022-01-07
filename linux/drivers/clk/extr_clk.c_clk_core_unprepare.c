
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_core {int prepare_count; int flags; scalar_t__ enable_count; struct clk_core* parent; int hw; TYPE_1__* ops; int name; } ;
struct TYPE_2__ {int (* unprepare ) (int ) ;} ;


 int CLK_IS_CRITICAL ;
 int CLK_SET_RATE_GATE ;
 scalar_t__ WARN (int,char*,int ) ;
 int clk_core_rate_unprotect (struct clk_core*) ;
 int clk_pm_runtime_put (struct clk_core*) ;
 int lockdep_assert_held (int *) ;
 int prepare_lock ;
 int stub1 (int ) ;
 int trace_clk_unprepare (struct clk_core*) ;
 int trace_clk_unprepare_complete (struct clk_core*) ;

__attribute__((used)) static void clk_core_unprepare(struct clk_core *core)
{
 lockdep_assert_held(&prepare_lock);

 if (!core)
  return;

 if (WARN(core->prepare_count == 0,
     "%s already unprepared\n", core->name))
  return;

 if (WARN(core->prepare_count == 1 && core->flags & CLK_IS_CRITICAL,
     "Unpreparing critical %s\n", core->name))
  return;

 if (core->flags & CLK_SET_RATE_GATE)
  clk_core_rate_unprotect(core);

 if (--core->prepare_count > 0)
  return;

 WARN(core->enable_count > 0, "Unpreparing enabled %s\n", core->name);

 trace_clk_unprepare(core);

 if (core->ops->unprepare)
  core->ops->unprepare(core->hw);

 clk_pm_runtime_put(core);

 trace_clk_unprepare_complete(core);
 clk_core_unprepare(core->parent);
}
