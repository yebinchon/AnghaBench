
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int TLUNI_NEXT ;

void *tluni_check_nat_const (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  if (*(IP ++) != *(--Data)) { return 0; }
  TLUNI_NEXT;
}
