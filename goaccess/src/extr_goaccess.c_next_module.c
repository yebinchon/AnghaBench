
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int no_tab_scroll; } ;
struct TYPE_3__ {int current; int dash; } ;


 int DASH_COLLAPSED ;
 TYPE_2__ conf ;
 int get_module_index (int) ;
 int get_next_module (int) ;
 TYPE_1__ gscroll ;

__attribute__((used)) static int
next_module (void)
{
  int next = -1;

  if ((next = get_next_module (gscroll.current)) == -1)
    return 1;

  gscroll.current = next;
  if (!conf.no_tab_scroll)
    gscroll.dash = get_module_index (gscroll.current) * DASH_COLLAPSED;

  return 0;
}
