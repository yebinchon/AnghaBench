
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ h; int filled; } ;


 int MAX_RES ;
 scalar_t__ Q_limit ;
 scalar_t__ R_cnt ;
 int R_tot_groups ;
 int R_tot_undef_hash ;
 int add_items_into_hashset () ;
 int hashmap_ll_int_free (int *) ;
 int hashset_init (scalar_t__) ;
 int heap_sort_res () ;
 int hm ;
 TYPE_1__ hs ;

__attribute__((used)) static void postprocess_res_group_mode (void) {
  if (Q_limit <= 0) {
    if (hs.h == 0 && R_cnt > 0) {
      hashset_init (R_cnt);
      add_items_into_hashset ();
    }
    R_tot_groups = hs.filled + R_tot_undef_hash;
    if (R_tot_groups > MAX_RES) { R_tot_groups = -1; }
    return;
  }
  if (!R_cnt) { return; }
  hashmap_ll_int_free (&hm);
  heap_sort_res ();
}
