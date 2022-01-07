
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int ALLOC_INIT_ZVAL (int *) ;
 int TLUNI_NEXT ;
 scalar_t__ TLUNI_OK ;
 scalar_t__ TLUNI_START (void**,void**,int **,struct tl_tree**) ;
 int add_index_zval (int *,int,int *) ;
 int array_init (int *) ;
 int fprintf (int ,char*,int) ;
 int stderr ;
 scalar_t__ tl_parse_error () ;
 int tl_parse_int () ;

void *tlcomb_fetch_vector (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  int n = tl_parse_int ();
  if (tl_parse_error ()) { return 0; }
  ALLOC_INIT_ZVAL (*arr);
  array_init (*arr);
  void **newIP = *(IP ++);




  int i;
  for (i = 0; i < n; i++) {
    *(++arr) = 0;
    if (TLUNI_START (newIP, Data, arr, vars) != TLUNI_OK) {
      -- arr;
      return 0;
    }
    add_index_zval (*(arr - 1), i, *arr);
    -- arr;
  }
  TLUNI_NEXT;
}
