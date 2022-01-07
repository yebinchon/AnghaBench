
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_lookup {int node; int clk; int clk_hw; } ;


 int __clk_get_hw (int ) ;
 int clocks ;
 int clocks_mutex ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void clkdev_add_table(struct clk_lookup *cl, size_t num)
{
 mutex_lock(&clocks_mutex);
 while (num--) {
  cl->clk_hw = __clk_get_hw(cl->clk);
  list_add_tail(&cl->node, &clocks);
  cl++;
 }
 mutex_unlock(&clocks_mutex);
}
