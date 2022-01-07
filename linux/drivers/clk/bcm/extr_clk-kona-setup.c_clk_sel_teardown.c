
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_init_data {int * parent_names; scalar_t__ num_parents; } ;
struct bcm_clk_sel {scalar_t__ parent_count; int * parent_sel; } ;


 int kfree (int *) ;

__attribute__((used)) static void clk_sel_teardown(struct bcm_clk_sel *sel,
  struct clk_init_data *init_data)
{
 kfree(sel->parent_sel);
 sel->parent_sel = ((void*)0);
 sel->parent_count = 0;

 init_data->num_parents = 0;
 kfree(init_data->parent_names);
 init_data->parent_names = ((void*)0);
}
