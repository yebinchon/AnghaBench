
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {scalar_t__ rate; } ;



unsigned long clk_get_rate(struct clk *clk)
{
 if (!clk)
  return 0;

 return (unsigned long)clk->rate;
}
