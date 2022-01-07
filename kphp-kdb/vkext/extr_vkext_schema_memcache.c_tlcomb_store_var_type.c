
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct tl_type {int dummy; } ;
struct TYPE_2__ {int ref_cnt; int flags; int * methods; } ;
struct tl_tree_type {scalar_t__ children; struct tl_type* type; scalar_t__ children_num; TYPE_1__ self; } ;
struct tl_tree {int dummy; } ;


 int DEC_REF (struct tl_tree*) ;
 int TLUNI_NEXT ;
 int dynamic_tree_nodes ;
 char* parse_zend_string (int **,int*) ;
 struct tl_type* tl_type_get_by_id (char*) ;
 int tl_type_methods ;
 int total_ref_cnt ;
 int total_tree_nodes_existed ;
 struct tl_tree_type* zzemalloc (int) ;

void *tlcomb_store_var_type (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  int var_num = (long)*(IP ++);
  int flags = (long)*(IP ++);
  int l;
  char *a = parse_zend_string (arr, &l);
  if (!a) { return 0; }
  if (vars[var_num]) {
    DEC_REF (vars[var_num]);
    vars[var_num] = 0;
  }
  struct tl_type *t = tl_type_get_by_id (a);
  if (!t) { return 0; }

  struct tl_tree_type *x = zzemalloc (sizeof (*x));
  dynamic_tree_nodes ++;
  total_tree_nodes_existed ++;
  x->self.ref_cnt = 1;
  total_ref_cnt ++;
  x->self.flags = flags;
  x->self.methods = &tl_type_methods;
  x->children_num = 0;
  x->type = t;
  x->children = 0;
  vars[var_num] = (void *)x;
  TLUNI_NEXT;
}
