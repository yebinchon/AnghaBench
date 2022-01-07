
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int core; } ;


 int clk_core_get_scaled_duty_cycle (int ,unsigned int) ;

int clk_get_scaled_duty_cycle(struct clk *clk, unsigned int scale)
{
 if (!clk)
  return 0;

 return clk_core_get_scaled_duty_cycle(clk->core, scale);
}
