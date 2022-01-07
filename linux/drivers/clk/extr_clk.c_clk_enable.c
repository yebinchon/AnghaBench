
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int core; } ;


 int clk_core_enable_lock (int ) ;

int clk_enable(struct clk *clk)
{
 if (!clk)
  return 0;

 return clk_core_enable_lock(clk->core);
}
