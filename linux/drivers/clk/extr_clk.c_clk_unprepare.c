
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int core; } ;


 scalar_t__ IS_ERR_OR_NULL (struct clk*) ;
 int clk_core_unprepare_lock (int ) ;

void clk_unprepare(struct clk *clk)
{
 if (IS_ERR_OR_NULL(clk))
  return;

 clk_core_unprepare_lock(clk->core);
}
