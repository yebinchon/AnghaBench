
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {scalar_t__ exclusive_count; int core; } ;


 scalar_t__ WARN_ON (int) ;
 int clk_core_rate_unprotect (int ) ;
 int clk_prepare_lock () ;
 int clk_prepare_unlock () ;

void clk_rate_exclusive_put(struct clk *clk)
{
 if (!clk)
  return;

 clk_prepare_lock();





 if (WARN_ON(clk->exclusive_count <= 0))
  goto out;

 clk_core_rate_unprotect(clk->core);
 clk->exclusive_count--;
out:
 clk_prepare_unlock();
}
