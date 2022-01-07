
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int TLUNI_NEXT ;
 int do_rpc_store_double (double) ;
 double parse_zend_double (int **) ;

void *tlcomb_store_double (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  double a = parse_zend_double (arr);
  do_rpc_store_double (a);
  TLUNI_NEXT;
}
