
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int MAKE_STD_ZVAL (int *) ;
 int TLUNI_NEXT ;
 int ZVAL_LONG (int *,int) ;
 int fprintf (int ,char*,int,int,char*) ;
 int stderr ;
 char* tl_parse_error () ;
 int tl_parse_int () ;

void *tlcomb_fetch_int (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  int a = tl_parse_int ();



  if (tl_parse_error ()) { return 0; }
  MAKE_STD_ZVAL (*arr);
  ZVAL_LONG (*arr, a);
  TLUNI_NEXT;
}
