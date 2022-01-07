
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int DEC_REF (struct tl_tree*) ;
 int MAKE_STD_ZVAL (int *) ;
 int TLUNI_NEXT ;
 int ZVAL_LONG (int *,int) ;
 int fprintf (int ,char*,int) ;
 struct tl_tree* int_to_var_nat_const (int) ;
 int stderr ;
 scalar_t__ tl_parse_error () ;
 int tl_parse_int () ;

void *tlcomb_fetch_var_num (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  int x = tl_parse_int ();



  if (tl_parse_error ()) {
    return 0;
  }
  MAKE_STD_ZVAL (*arr);
  ZVAL_LONG (*arr, x);
  int var_num = (long)*(IP ++);
  if (vars[var_num]) {
    DEC_REF (vars[var_num]);
  }
  vars[var_num] = int_to_var_nat_const (x);

  TLUNI_NEXT;
}
