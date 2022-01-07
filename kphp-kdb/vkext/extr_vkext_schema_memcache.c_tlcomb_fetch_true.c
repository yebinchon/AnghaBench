
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int MAKE_STD_ZVAL (int *) ;
 int TLUNI_NEXT ;
 int ZVAL_TRUE (int *) ;
 int fprintf (int ,char*) ;
 int stderr ;
 scalar_t__ tl_parse_error () ;

void *tlcomb_fetch_true (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  if (tl_parse_error ()) { return 0; }



  MAKE_STD_ZVAL (*arr);
  ZVAL_TRUE (*arr);
  TLUNI_NEXT;
}
