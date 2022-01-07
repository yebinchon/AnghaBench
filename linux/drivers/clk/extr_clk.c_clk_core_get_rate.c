
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_core {int flags; } ;


 int CLK_GET_RATE_NOCACHE ;
 int __clk_recalc_rates (struct clk_core*,int ) ;
 unsigned long clk_core_get_rate_nolock (struct clk_core*) ;
 int clk_prepare_lock () ;
 int clk_prepare_unlock () ;

__attribute__((used)) static unsigned long clk_core_get_rate(struct clk_core *core)
{
 unsigned long rate;

 clk_prepare_lock();

 if (core && (core->flags & CLK_GET_RATE_NOCACHE))
  __clk_recalc_rates(core, 0);

 rate = clk_core_get_rate_nolock(core);
 clk_prepare_unlock();

 return rate;
}
