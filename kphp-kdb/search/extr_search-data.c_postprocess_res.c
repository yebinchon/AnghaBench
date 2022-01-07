
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int item_t ;


 int FLAG_ENTRY_SORT_SEARCH ;
 int FLAG_PRIORITY_SORT_SEARCH ;
 int FLAG_REVERSE_SEARCH ;
 scalar_t__ MAX_RATES ;
 scalar_t__ Q_hash_group_mode ;
 int Q_limit ;
 int Q_order ;
 scalar_t__ Q_type ;
 int ** R ;
 int R_cnt ;
 int R_tot ;
 int heap_sort_res () ;
 int postprocess_res_group_mode () ;

__attribute__((used)) static void postprocess_res (void) {
  if (Q_hash_group_mode) {
    postprocess_res_group_mode ();
    return;
  }

  int i, k;
  item_t *t;

  if (Q_type == MAX_RATES && !(Q_order & (FLAG_ENTRY_SORT_SEARCH | FLAG_PRIORITY_SORT_SEARCH))) {
    if (Q_order & FLAG_REVERSE_SEARCH) {
      k = R_cnt - 1;
      for (i = 0; i < k - i; i++) {
        t = R[k-i]; R[k-i] = R[i]; R[i] = t;
      }
      if (R_tot >= Q_limit) {
        k = R_cnt + Q_limit - 1;
        for (i = R_cnt; i < k - i; i++) {
          t = R[k-i]; R[k-i] = R[i]; R[i] = t;
        }
        R_cnt = Q_limit;
      }
    }
    return;
  }

  if (!R_cnt) { return; }
  heap_sort_res ();
}
