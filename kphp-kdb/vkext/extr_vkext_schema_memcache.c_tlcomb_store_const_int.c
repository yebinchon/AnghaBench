
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int TLUNI_NEXT ;
 int do_rpc_store_int (long) ;

void *tlcomb_store_const_int (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  do_rpc_store_int ((long)*(IP ++));
  TLUNI_NEXT;
}
