
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ minr; scalar_t__ maxr; } ;


 TYPE_1__* Q_range ;
 int n_ranges ;

int has_empty_range () {
  int i = 0;
  for (i = 0; i < n_ranges; i++) {
    if (Q_range[i].minr > Q_range[i].maxr) {
      return 1;
    }
  }
  return 0;
}
