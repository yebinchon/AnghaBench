
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_duty {int dummy; } ;
struct clk_core {int duty; int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_duty_cycle ) (int ,struct clk_duty*) ;} ;


 int EBUSY ;
 scalar_t__ clk_core_rate_is_protected (struct clk_core*) ;
 int clk_core_set_duty_cycle_parent_nolock (struct clk_core*,struct clk_duty*) ;
 int lockdep_assert_held (int *) ;
 int memcpy (int *,struct clk_duty*,int) ;
 int prepare_lock ;
 int stub1 (int ,struct clk_duty*) ;
 int trace_clk_set_duty_cycle (struct clk_core*,struct clk_duty*) ;
 int trace_clk_set_duty_cycle_complete (struct clk_core*,struct clk_duty*) ;

__attribute__((used)) static int clk_core_set_duty_cycle_nolock(struct clk_core *core,
       struct clk_duty *duty)
{
 int ret;

 lockdep_assert_held(&prepare_lock);

 if (clk_core_rate_is_protected(core))
  return -EBUSY;

 trace_clk_set_duty_cycle(core, duty);

 if (!core->ops->set_duty_cycle)
  return clk_core_set_duty_cycle_parent_nolock(core, duty);

 ret = core->ops->set_duty_cycle(core->hw, duty);
 if (!ret)
  memcpy(&core->duty, duty, sizeof(*duty));

 trace_clk_set_duty_cycle_complete(core, duty);

 return ret;
}
