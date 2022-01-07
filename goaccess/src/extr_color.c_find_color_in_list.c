
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ item; scalar_t__ module; } ;
typedef TYPE_1__ GColors ;



__attribute__((used)) static int
find_color_in_list (void *data, void *color)
{
  GColors *new_color = color;
  GColors *old_color = data;

  if (old_color->item != new_color->item)
    return 0;
  if (old_color->module != new_color->module)
    return 0;
  return 1;
}
