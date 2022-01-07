
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {scalar_t__ usecount; struct clk* parent; } ;


 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static void __clk_disable(struct clk *clk)
{
 if (WARN_ON(clk->usecount == 0))
  return;
 --clk->usecount;

 if (clk->parent)
  __clk_disable(clk->parent);
}
