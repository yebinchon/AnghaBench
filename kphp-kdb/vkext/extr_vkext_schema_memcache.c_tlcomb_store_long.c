
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int TLUNI_NEXT ;
 int do_rpc_store_long (long long) ;
 long long parse_zend_long (int **) ;

void *tlcomb_store_long (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  long long a = parse_zend_long (arr);
  do_rpc_store_long (a);
  TLUNI_NEXT;
}
