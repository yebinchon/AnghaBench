
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int (* disable ) (struct clk*) ;} ;


 int clk_good (struct clk*) ;
 int stub1 (struct clk*) ;
 scalar_t__ unlikely (int) ;

void clk_disable(struct clk *clk)
{
 if (unlikely(!clk_good(clk)))
  return;

 if (clk->disable)
  clk->disable(clk);
}
