
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ filled; } ;


 scalar_t__ MAX_RES ;
 int * R ;
 int R_cnt ;
 scalar_t__ R_tot_undef_hash ;
 int get_hash_item_unsafe (int ) ;
 int hashset_ll_insert (TYPE_1__*,int ) ;
 TYPE_1__ hs ;

void add_items_into_hashset (void) {
  int i;
  for (i = 0; i < R_cnt && hs.filled + R_tot_undef_hash <= MAX_RES; i++) {
    hashset_ll_insert (&hs, get_hash_item_unsafe (R[i]));
  }
}
