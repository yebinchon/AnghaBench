
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int usecount; struct clk* parent; } ;



__attribute__((used)) static void __clk_enable(struct clk *clk)
{
 if (clk->parent)
  __clk_enable(clk->parent);
 clk->usecount++;
}
