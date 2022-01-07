
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int TLUNI_NEXT ;
 int do_rpc_store_int (int) ;
 int fprintf (int ,char*,int,int) ;
 int parse_zend_long (int **) ;
 int stderr ;

void *tlcomb_store_int (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  int a = parse_zend_long (arr);



  do_rpc_store_int (a);
  TLUNI_NEXT;
}
