
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef void tl_tree ;


 int TLUNI_NEXT ;
 int fprintf (int ,char*,scalar_t__) ;
 int int_to_var_nat_const (scalar_t__) ;
 int stderr ;
 scalar_t__ var_nat_const_to_int (void*) ;

void *tlsub_push_nat_var (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  int p = (long)*(IP ++);


  *(Data ++) = int_to_var_nat_const (var_nat_const_to_int (vars[p]) + (long) *(IP ++));



  TLUNI_NEXT;
}
