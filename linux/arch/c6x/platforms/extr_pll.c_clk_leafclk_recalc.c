
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {unsigned long rate; TYPE_1__* parent; int name; } ;
struct TYPE_2__ {int rate; int name; } ;


 scalar_t__ WARN_ON (int) ;
 int pr_debug (char*,int ,int ,int) ;

__attribute__((used)) static unsigned long clk_leafclk_recalc(struct clk *clk)
{
 if (WARN_ON(!clk->parent))
  return clk->rate;

 pr_debug("%s: (parent %s) rate = %lu KHz\n",
   clk->name, clk->parent->name, clk->parent->rate / 1000);

 return clk->parent->rate;
}
