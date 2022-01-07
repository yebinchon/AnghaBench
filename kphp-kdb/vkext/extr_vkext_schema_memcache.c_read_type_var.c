
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ref_cnt; int flags; int * methods; } ;
struct tl_tree_var_type {int var_num; TYPE_1__ self; } ;
typedef void tl_tree ;


 int ADD_PMALLOC (int) ;
 int FLAG_BARE ;
 int FLAG_NOVAR ;
 int persistent_tree_nodes ;
 scalar_t__ tl_parse_error () ;
 void* tl_parse_int () ;
 int tl_pvar_type_methods ;
 int total_ref_cnt ;
 int total_tree_nodes_existed ;
 struct tl_tree_var_type* zzmalloc0 (int) ;

struct tl_tree *read_type_var (int *var_num) {
  struct tl_tree_var_type *T = zzmalloc0 (sizeof (*T));
  ADD_PMALLOC (sizeof (*T));

  T->self.ref_cnt = 1;
  total_ref_cnt ++;
  persistent_tree_nodes ++;
  total_tree_nodes_existed ++;
  T->self.methods = &tl_pvar_type_methods;
  T->var_num = tl_parse_int ();
  T->self.flags = tl_parse_int ();
  if (tl_parse_error ()) {
    return 0;
  }
  if (T->var_num >= *var_num) {
    *var_num = T->var_num + 1;
  }
  if (T->self.flags & (FLAG_NOVAR | FLAG_BARE)) {
    return 0;
  }
  return (void *)T;
}
