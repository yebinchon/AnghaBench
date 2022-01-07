
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_clk_unit {unsigned int nr_clks; struct clk** clk_table; } ;
struct clk {int dummy; } ;


 scalar_t__ IS_ERR_OR_NULL (struct clk*) ;
 int pr_err (char*,unsigned int,...) ;

void mmp_clk_add(struct mmp_clk_unit *unit, unsigned int id,
   struct clk *clk)
{
 if (IS_ERR_OR_NULL(clk)) {
  pr_err("CLK %d has invalid pointer %p\n", id, clk);
  return;
 }
 if (id >= unit->nr_clks) {
  pr_err("CLK %d is invalid\n", id);
  return;
 }

 unit->clk_table[id] = clk;
}
