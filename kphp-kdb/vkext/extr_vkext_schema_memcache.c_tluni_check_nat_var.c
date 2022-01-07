
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef void tl_tree ;


 int DEC_REF (void*) ;
 int TLUNI_NEXT ;
 void* int_to_var_nat_const (scalar_t__) ;
 scalar_t__ var_nat_const_to_int (void**) ;

void *tluni_check_nat_var (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  long p = (long)*(IP ++);

  void *x = int_to_var_nat_const (var_nat_const_to_int (--Data) + (long)*(IP ++));
  if (vars[p] != x) {
    DEC_REF (x);
    return 0;
  }
  DEC_REF (x);
  TLUNI_NEXT;
}
