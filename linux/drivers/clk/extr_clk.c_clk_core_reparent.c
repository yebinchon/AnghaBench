
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_core {int dummy; } ;


 int POST_RATE_CHANGE ;
 int __clk_recalc_accuracies (struct clk_core*) ;
 int __clk_recalc_rates (struct clk_core*,int ) ;
 int clk_reparent (struct clk_core*,struct clk_core*) ;

__attribute__((used)) static void clk_core_reparent(struct clk_core *core,
      struct clk_core *new_parent)
{
 clk_reparent(core, new_parent);
 __clk_recalc_accuracies(core);
 __clk_recalc_rates(core, POST_RATE_CHANGE);
}
