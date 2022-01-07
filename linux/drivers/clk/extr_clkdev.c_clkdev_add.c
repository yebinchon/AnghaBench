
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_lookup {int clk; scalar_t__ clk_hw; } ;


 scalar_t__ __clk_get_hw (int ) ;
 int __clkdev_add (struct clk_lookup*) ;

void clkdev_add(struct clk_lookup *cl)
{
 if (!cl->clk_hw)
  cl->clk_hw = __clk_get_hw(cl->clk);
 __clkdev_add(cl);
}
