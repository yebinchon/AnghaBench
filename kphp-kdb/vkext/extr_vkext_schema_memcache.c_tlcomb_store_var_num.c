
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int DEC_REF (struct tl_tree*) ;
 int TLUNI_NEXT ;
 int do_rpc_store_int (int) ;
 struct tl_tree* int_to_var_nat_const (int) ;
 int parse_zend_long (int **) ;

void *tlcomb_store_var_num (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  int var_num = (long)*(IP ++);
  int a = parse_zend_long (arr);
  if (vars[var_num]) {
    DEC_REF (vars[var_num]);
  }
  vars[var_num] = int_to_var_nat_const (a);
  do_rpc_store_int (a);
  TLUNI_NEXT;
}
