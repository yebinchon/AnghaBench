
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int DEC_REF (struct tl_tree*) ;
 int INC_REF (struct tl_tree*) ;
 int TLUNI_NEXT ;
 scalar_t__ TL_IS_NAT_VAR (struct tl_tree*) ;

void *tluni_set_type_var (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  long p = (long)*(IP ++);
  if (vars[p]) {
    DEC_REF (vars[p]);
  }
  vars[p] = 0;

  vars[p] = *(--Data);
  if (TL_IS_NAT_VAR (vars[p])) { return 0; }
  INC_REF (vars[p]);
  TLUNI_NEXT;
}
