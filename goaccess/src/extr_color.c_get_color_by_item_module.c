
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int item; int module; } ;
struct TYPE_9__ {TYPE_2__* data; } ;
typedef TYPE_1__ GSLList ;
typedef int GModule ;
typedef TYPE_2__ GColors ;
typedef int GColorItem ;


 int color_list ;
 int find_color_item_module_in_list ;
 int free (TYPE_2__*) ;
 TYPE_2__* get_color (int ) ;
 TYPE_1__* list_find (int ,int ,TYPE_2__*) ;
 TYPE_2__* new_gcolors () ;

GColors *
get_color_by_item_module (GColorItem item, GModule module)
{
  GColors *needle = new_gcolors (), *color = ((void*)0);
  GSLList *match = ((void*)0);

  needle->module = module;
  needle->item = item;


  if ((match = list_find (color_list, find_color_item_module_in_list, needle)))
    color = match->data;


  if (!color)
    color = get_color (item);
  free (needle);

  return color;
}
