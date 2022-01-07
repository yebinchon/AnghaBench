
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * color_list ;
 int list_remove_nodes (int *) ;
 int * pair_list ;

void
free_color_lists (void)
{
  if (pair_list)
    list_remove_nodes (pair_list);
  if (color_list)
    list_remove_nodes (color_list);
  color_list = ((void*)0);
  pair_list = ((void*)0);
}
