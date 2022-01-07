
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {scalar_t__ enabled; int name; } ;


 int pr_warn (char*,int ) ;

void clk_put(struct clk *clk)
{
 if (clk->enabled != 0)
  pr_warn("clk_put %s still enabled\n", clk->name);
}
