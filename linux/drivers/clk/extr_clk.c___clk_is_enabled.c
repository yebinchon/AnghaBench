
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int core; } ;


 int clk_core_is_enabled (int ) ;

bool __clk_is_enabled(struct clk *clk)
{
 if (!clk)
  return 0;

 return clk_core_is_enabled(clk->core);
}
