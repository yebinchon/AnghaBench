
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccu_data {int * base; int * node; } ;


 int ccu_clks_teardown (struct ccu_data*) ;
 int iounmap (int *) ;
 int of_clk_del_provider (int *) ;
 int of_node_put (int *) ;

__attribute__((used)) static void kona_ccu_teardown(struct ccu_data *ccu)
{
 if (!ccu->base)
  return;

 of_clk_del_provider(ccu->node);
 ccu_clks_teardown(ccu);
 of_node_put(ccu->node);
 ccu->node = ((void*)0);
 iounmap(ccu->base);
 ccu->base = ((void*)0);
}
