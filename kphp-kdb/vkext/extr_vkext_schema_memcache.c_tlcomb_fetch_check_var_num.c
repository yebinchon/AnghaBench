
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int TLUNI_NEXT ;
 int fprintf (int ,char*,int) ;
 int stderr ;
 scalar_t__ tl_parse_error () ;
 int tl_parse_int () ;
 int var_nat_const_to_int (struct tl_tree*) ;

void *tlcomb_fetch_check_var_num (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  int x = tl_parse_int ();



  if (tl_parse_error ()) {
    return 0;
  }
  int var_num = (long)*(IP ++);
  if (x != var_nat_const_to_int (vars[var_num])) {
    return 0;
  }
  TLUNI_NEXT;
}
