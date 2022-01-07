
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sort_panel_idx; int * sort_panels; } ;


 int SORT_FIELD_LEN ;
 int SORT_MODULE_LEN ;
 int SORT_ORDER_LEN ;
 TYPE_1__ conf ;
 int set_initial_sort (char*,char*,char*) ;
 int sscanf (int ,char*,char*,char*,char*) ;

void
parse_initial_sort (void)
{
  int i;
  char module[SORT_MODULE_LEN], field[SORT_FIELD_LEN], order[SORT_ORDER_LEN];
  for (i = 0; i < conf.sort_panel_idx; ++i) {
    if (sscanf
        (conf.sort_panels[i], "%15[^','],%11[^','],%4s", module, field,
         order) != 3)
      continue;
    set_initial_sort (module, field, order);
  }
}
