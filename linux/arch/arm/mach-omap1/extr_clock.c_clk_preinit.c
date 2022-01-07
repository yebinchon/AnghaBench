
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int children; } ;


 int INIT_LIST_HEAD (int *) ;

void clk_preinit(struct clk *clk)
{
 INIT_LIST_HEAD(&clk->children);
}
