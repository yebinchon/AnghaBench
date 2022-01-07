
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_core {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {unsigned long (* recalc_rate ) (int ,unsigned long) ;} ;


 int clk_pm_runtime_get (struct clk_core*) ;
 int clk_pm_runtime_put (struct clk_core*) ;
 unsigned long stub1 (int ,unsigned long) ;

__attribute__((used)) static unsigned long clk_recalc(struct clk_core *core,
    unsigned long parent_rate)
{
 unsigned long rate = parent_rate;

 if (core->ops->recalc_rate && !clk_pm_runtime_get(core)) {
  rate = core->ops->recalc_rate(core->hw, parent_rate);
  clk_pm_runtime_put(core);
 }
 return rate;
}
