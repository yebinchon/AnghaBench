
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idx; int maxr; int minr; } ;


 int INT_MAX ;
 int INT_MIN ;
 int MAX_RATES ;
 TYPE_1__* Q_range ;
 int n_ranges ;

__attribute__((used)) static int find_range_idx (int sm) {
  int i;
  for (i = 0; i < n_ranges; i++) {
    if (Q_range[i].idx == sm) {
      return i;
    }
  }
  if (n_ranges >= MAX_RATES + 2) {
    return -1;
  }
  Q_range[n_ranges].minr = INT_MIN;
  Q_range[n_ranges].maxr = INT_MAX;
  Q_range[n_ranges].idx = sm;
  return n_ranges++;
}
