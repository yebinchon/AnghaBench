
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_duty {unsigned int num; unsigned int den; } ;
struct clk {int core; scalar_t__ exclusive_count; } ;


 int EINVAL ;
 int clk_core_rate_protect (int ) ;
 int clk_core_rate_unprotect (int ) ;
 int clk_core_set_duty_cycle_nolock (int ,struct clk_duty*) ;
 int clk_prepare_lock () ;
 int clk_prepare_unlock () ;

int clk_set_duty_cycle(struct clk *clk, unsigned int num, unsigned int den)
{
 int ret;
 struct clk_duty duty;

 if (!clk)
  return 0;


 if (den == 0 || num > den)
  return -EINVAL;

 duty.num = num;
 duty.den = den;

 clk_prepare_lock();

 if (clk->exclusive_count)
  clk_core_rate_unprotect(clk->core);

 ret = clk_core_set_duty_cycle_nolock(clk->core, &duty);

 if (clk->exclusive_count)
  clk_core_rate_protect(clk->core);

 clk_prepare_unlock();

 return ret;
}
