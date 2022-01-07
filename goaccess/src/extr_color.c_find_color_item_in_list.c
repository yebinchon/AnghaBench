
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int module; int item; } ;
typedef TYPE_1__ GColors ;
typedef int GColorItem ;



__attribute__((used)) static int
find_color_item_in_list (void *data, void *needle)
{
  GColors *color = data;
  GColorItem *item = needle;

  return color->item == (GColorItem) (*(int *) item) && color->module == -1;
}
