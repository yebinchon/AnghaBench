
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Q_hash_group_mode ;
 int R_cnt ;
 int heap_sort_res () ;
 int postprocess_res_group_mode () ;

void postprocess_res (void) {
  if (Q_hash_group_mode) {
    postprocess_res_group_mode ();
    return;
  }
  if (!R_cnt) { return; }
  heap_sort_res ();
}
