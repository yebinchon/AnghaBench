
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int item_t ;
struct TYPE_2__ {int minr; int maxr; int idx; } ;


 int FLAG_REVERSE_SEARCH ;
 scalar_t__ MAX_RATES ;
 scalar_t__ Q_limit ;
 int Q_order ;
 TYPE_1__* Q_range ;
 scalar_t__ Q_type ;
 int ** R ;
 int* RV ;
 scalar_t__ R_cnt ;
 int R_tot ;
 int evaluate_rating (int *) ;
 int get_rate_item (int *,int ) ;
 int n_ranges ;
 int vkprintf (int,char*,int,...) ;

__attribute__((used)) static int store_res (item_t *I) {
  vkprintf (3, "store_res!!, n_ranges = %d\n", n_ranges);
  int i, j = 0, r;
  for (i = 0; i < n_ranges; i++) {
    int r0 = get_rate_item (I, Q_range[i].idx);
    vkprintf (3, "ranges: r0 = %d, Q_range[i].minr = %d, Q_range[i].maxr = %d\n", r0, Q_range[i].minr, Q_range[i].maxr);
    if (r0 < Q_range[i].minr || r0 > Q_range[i].maxr) {
      return 1;
    }
  }

  R_tot++;
  if (Q_limit <= 0) {
    return 1;
  }

  if (Q_type == MAX_RATES) {
    if ((Q_order & FLAG_REVERSE_SEARCH) && R_cnt == Q_limit) {
      R_cnt = 0;
    }
    if (R_cnt < Q_limit) {
      R[R_cnt++] = I;
    }
    return 1;
  }

  r = evaluate_rating (I);

  if (Q_order & FLAG_REVERSE_SEARCH) {
    r = -(r + 1);
  }

  if (R_cnt == Q_limit) {
    if (RV[1] <= r) {
      return 1;
    }
    i = 1;
    while (1) {
      j = i*2;
      if (j > R_cnt) { break; }
      if (j < R_cnt) {
        if (RV[j+1] > RV[j]) {
          j++;
        }
      }
      if (RV[j] <= r) { break; }
      R[i] = R[j];
      RV[i] = RV[j];
      i = j;
    }
    R[i] = I;
    RV[i] = r;
  } else {
    i = ++R_cnt;
    while (i > 1) {
      j = (i >> 1);
      if (RV[j] >= r) { break; }
      R[i] = R[j];
      RV[i] = RV[j];
      i = j;
    }
    R[i] = I;
    RV[i] = r;
  }
  return 1;
}
