
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int core; } ;


 long clk_core_get_accuracy (int ) ;

long clk_get_accuracy(struct clk *clk)
{
 if (!clk)
  return 0;

 return clk_core_get_accuracy(clk->core);
}
