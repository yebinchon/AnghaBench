
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int ref_cnt; int * methods; } ;
struct tl_tree_var_num {int var_num; TYPE_1__ self; void* dif; } ;
typedef void tl_tree ;


 int ADD_PMALLOC (int) ;
 int FLAG_NOVAR ;
 int persistent_tree_nodes ;
 int schema_version ;
 scalar_t__ tl_parse_error () ;
 void* tl_parse_int () ;
 void* tl_parse_long () ;
 int tl_pvar_num_methods ;
 int total_ref_cnt ;
 int total_tree_nodes_existed ;
 struct tl_tree_var_num* zzmalloc (int) ;

struct tl_tree *read_num_var (int *var_num) {
  struct tl_tree_var_num *T = zzmalloc (sizeof (*T));
  ADD_PMALLOC (sizeof (*T));
  T->self.flags = 0;
  T->self.ref_cnt = 1;
  total_ref_cnt ++;
  persistent_tree_nodes ++;
  total_tree_nodes_existed ++;
  T->self.methods = &tl_pvar_num_methods;;
  if (schema_version >= 2) {
    T->dif = tl_parse_int ();
  } else {
    T->dif = tl_parse_long ();
  }
  T->var_num = tl_parse_int ();
  if (tl_parse_error ()) {
    return 0;
  }
  if (T->var_num >= *var_num) {
    *var_num = T->var_num + 1;
  }
  if (T->self.flags & FLAG_NOVAR) {
    return 0;
  }
  return (void *)T;
}
