
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* chart; } ;
struct TYPE_4__ {scalar_t__ plot; } ;
typedef TYPE_2__ GHTML ;



__attribute__((used)) static int
count_plot_fp (const GHTML * def)
{
  int i = 0;
  for (i = 0; def->chart[i].plot != 0; ++i);
  return i;
}
