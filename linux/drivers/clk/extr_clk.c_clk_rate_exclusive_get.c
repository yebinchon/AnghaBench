
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int exclusive_count; int core; } ;


 int clk_core_rate_protect (int ) ;
 int clk_prepare_lock () ;
 int clk_prepare_unlock () ;

int clk_rate_exclusive_get(struct clk *clk)
{
 if (!clk)
  return 0;

 clk_prepare_lock();
 clk_core_rate_protect(clk->core);
 clk->exclusive_count++;
 clk_prepare_unlock();

 return 0;
}
