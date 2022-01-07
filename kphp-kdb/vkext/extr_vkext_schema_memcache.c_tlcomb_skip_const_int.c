
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int TLUNI_NEXT ;
 scalar_t__ tl_parse_error () ;
 int tl_parse_int () ;

void *tlcomb_skip_const_int (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  int a = tl_parse_int ();
  if (tl_parse_error ()) { return 0; }
  if (a != (long)*(IP ++)) { return 0; }
  TLUNI_NEXT;
}
