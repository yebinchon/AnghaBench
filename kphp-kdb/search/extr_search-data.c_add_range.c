
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int minr; int maxr; } ;


 TYPE_1__* Q_range ;
 int assert (int) ;
 int find_range_idx (int) ;

void add_range (int type, int min_value, int max_value) {
  int t = find_range_idx (type);
  assert (t >= 0);
  if (Q_range[t].minr < min_value) {
    Q_range[t].minr = min_value;
  }
  if (Q_range[t].maxr > max_value) {
    Q_range[t].maxr = max_value;
  }
}
