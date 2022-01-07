
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int (* deactivate ) (struct clk*) ;} ;


 int clk_good (struct clk*) ;
 int stub1 (struct clk*) ;
 scalar_t__ unlikely (int) ;

void clk_deactivate(struct clk *clk)
{
 if (unlikely(!clk_good(clk)))
  return;

 if (clk->deactivate)
  clk->deactivate(clk);
}
