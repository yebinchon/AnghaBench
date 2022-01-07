
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int (* activate ) (struct clk*) ;} ;


 int clk_good (struct clk*) ;
 int stub1 (struct clk*) ;
 scalar_t__ unlikely (int) ;

int clk_activate(struct clk *clk)
{
 if (unlikely(!clk_good(clk)))
  return -1;

 if (clk->activate)
  return clk->activate(clk);

 return -1;
}
