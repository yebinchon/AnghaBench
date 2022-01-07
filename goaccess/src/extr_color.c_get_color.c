
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_1__ GSLList ;
typedef int GColors ;
typedef int GColorItem ;


 int COLOR_NORMAL ;
 int FATAL (char*,int ) ;
 int color_list ;
 int find_color_item_in_list ;
 TYPE_1__* list_find (int ,int ,int *) ;

GColors *
get_color (GColorItem item)
{
  GColorItem normal = COLOR_NORMAL;
  GSLList *match = ((void*)0);

  if ((match = list_find (color_list, find_color_item_in_list, &item)))
    return (GColors *) match->data;

  if ((match = list_find (color_list, find_color_item_in_list, &normal)))
    return (GColors *) match->data;


  FATAL ("Unable to find color item %d", item);
}
