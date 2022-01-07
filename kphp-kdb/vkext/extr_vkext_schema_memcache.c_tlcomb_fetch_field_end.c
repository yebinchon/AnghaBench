
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int MAKE_STD_ZVAL (int *) ;
 int TLUNI_NEXT ;
 int array_init (int *) ;
 int set_field (int **,int *,char*,int) ;

void *tlcomb_fetch_field_end (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  char *id = *(IP ++);
  int num = (long)*(IP ++);

  if (!*arr) {
    MAKE_STD_ZVAL (*arr);
    array_init (*arr);
  }
  set_field ((arr - 1), *arr, id, num);
  arr --;
  TLUNI_NEXT;
}
