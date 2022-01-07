
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int append_method; int append_protocol; int bandwidth; int serve_usecs; } ;
typedef size_t GModule ;


 int SORT_BY_AVGTS ;
 int SORT_BY_BW ;
 int SORT_BY_CUMTS ;
 int SORT_BY_MAXTS ;
 int SORT_BY_MTHD ;
 int SORT_BY_PROT ;
 TYPE_1__ conf ;
 int** sort_choices ;

int
can_sort_module (GModule module, int field)
{
  int i, can_sort = 0;
  for (i = 0; -1 != sort_choices[module][i]; i++) {
    if (sort_choices[module][i] != field)
      continue;
    if (SORT_BY_AVGTS == field && !conf.serve_usecs)
      continue;
    if (SORT_BY_CUMTS == field && !conf.serve_usecs)
      continue;
    if (SORT_BY_MAXTS == field && !conf.serve_usecs)
      continue;
    else if (SORT_BY_BW == field && !conf.bandwidth)
      continue;
    else if (SORT_BY_PROT == field && !conf.append_protocol)
      continue;
    else if (SORT_BY_MTHD == field && !conf.append_method)
      continue;

    can_sort = 1;
    break;
  }

  return can_sort;
}
