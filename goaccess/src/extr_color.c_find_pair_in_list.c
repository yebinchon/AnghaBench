
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fg; scalar_t__ bg; } ;
typedef TYPE_1__ GColorPair ;



__attribute__((used)) static int
find_pair_in_list (void *data, void *color)
{
  GColorPair *new_color = color;
  GColorPair *old_color = data;

  if (old_color->fg != new_color->fg)
    return 0;
  if (old_color->bg != new_color->bg)
    return 0;
  return 1;
}
