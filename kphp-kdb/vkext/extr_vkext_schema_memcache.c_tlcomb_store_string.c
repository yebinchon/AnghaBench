
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int TLUNI_NEXT ;
 int do_rpc_store_string (char*,int) ;
 char* parse_zend_string (int **,int*) ;

void *tlcomb_store_string (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  int len;
  char *s = parse_zend_string (arr, &len);
  do_rpc_store_string (s, len);
  TLUNI_NEXT;
}
