
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int MAKE_STD_ZVAL (int *) ;
 int TLUNI_NEXT ;
 int ZVAL_LONG (int *,long long) ;
 scalar_t__ tl_parse_error () ;
 long long tl_parse_long () ;

void *tlcomb_fetch_long (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  long long a = tl_parse_long ();
  if (tl_parse_error ()) { return 0; }
  MAKE_STD_ZVAL (*arr);
  ZVAL_LONG (*arr, a);
  TLUNI_NEXT;
}
