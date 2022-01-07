
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {unsigned long divider; scalar_t__ parent; } ;


 unsigned long clk_get_rate (scalar_t__) ;

__attribute__((used)) static unsigned long clk_divide_parent(struct clk *clk)
{
 if (clk->parent && clk->divider)
  return clk_get_rate(clk->parent) / clk->divider;
 else
  return 0;
}
