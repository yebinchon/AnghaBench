
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int node; } ;


 int clocks_mutex ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void clk_unregister(struct clk *clk)
{
 mutex_lock(&clocks_mutex);
 list_del(&clk->node);
 mutex_unlock(&clocks_mutex);
}
