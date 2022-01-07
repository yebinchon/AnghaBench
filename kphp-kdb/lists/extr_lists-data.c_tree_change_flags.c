
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree_ext_small_t ;
typedef int tree_ext_large_t ;
struct TYPE_2__ {int flags; } ;


 int * LARGE_NODE (int *) ;
 TYPE_1__* PAYLOAD (int *) ;
 int change_entry_flags_memory (int *,int) ;
 int f_and_c ;
 int f_and_s ;
 int f_cnt ;
 int f_xor_c ;
 int f_xor_s ;

__attribute__((used)) static int tree_change_flags (tree_ext_small_t *TS) {
  tree_ext_large_t *T = LARGE_NODE(TS);
  if (!((PAYLOAD (T)->flags ^ f_xor_c) & f_and_c)) {
    change_entry_flags_memory (T, (PAYLOAD (T)->flags & f_and_s) ^ f_xor_s);
    f_cnt++;
  }
  return 0;
}
