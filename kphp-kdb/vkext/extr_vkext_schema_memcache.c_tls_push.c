
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int INC_REF (void*) ;
 int TLUNI_NEXT ;

void *tls_push (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  *(Data ++) = *(IP ++);
  INC_REF (*(Data - 1));
  TLUNI_NEXT;
}
