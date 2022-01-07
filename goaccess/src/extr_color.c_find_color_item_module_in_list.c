
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ module; int item; } ;
typedef TYPE_1__ GColors ;



__attribute__((used)) static int
find_color_item_module_in_list (void *data, void *needle)
{
  GColors *color = data;
  GColors *item = needle;

  return color->item == item->item && color->module == item->module;
}
