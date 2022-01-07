
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int ALLOC_INIT_ZVAL (int *) ;
 int DEC_REF (void*) ;
 int TLUNI_NEXT ;
 scalar_t__ TLUNI_OK ;
 scalar_t__ TLUNI_START (void**,void**,int **,struct tl_tree**) ;
 int add_index_zval (int *,int,int *) ;
 int array_init (int *) ;
 int fprintf (int ,char*,int) ;
 int stderr ;
 int var_nat_const_to_int (void*) ;

void *tlcomb_fetch_array (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  void **newIP = *(IP ++);
  int multiplicity = var_nat_const_to_int (*(--Data));



  DEC_REF (*Data);
  int i;
  ALLOC_INIT_ZVAL (*arr);
  array_init (*arr);
  for (i = 0; i < multiplicity; i++) {
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
