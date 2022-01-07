
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 scalar_t__ IS_ARRAY ;
 int TLUNI_NEXT ;
 scalar_t__ TLUNI_OK ;
 scalar_t__ TLUNI_START (void**,void**,int **,struct tl_tree**) ;
 scalar_t__ Z_TYPE_PP (int **) ;
 int do_rpc_store_int (int) ;
 int fprintf (int ,char*,int *) ;
 int get_array_size (int **) ;
 int ** get_field (int *,int ,int) ;
 int stderr ;

void *tlcomb_store_vector (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  void **newIP = *(IP ++);
  if (Z_TYPE_PP (arr) != IS_ARRAY) {
    return 0;
  }

  int multiplicity = get_array_size (arr);
  do_rpc_store_int (multiplicity);

  int i;
  for (i = 0; i < multiplicity; i++) {
    zval **w = get_field (*arr, 0, i);



    if (!w) { return 0; }
    *(++arr) = *w;
    if (TLUNI_START (newIP, Data, arr, vars) != TLUNI_OK) {
      -- arr;
      return 0;
    }
    -- arr;
  }
  TLUNI_NEXT;
}
