
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int TLUNI_NEXT ;
 scalar_t__ TLUNI_OK ;
 scalar_t__ TLUNI_START (void**,void**,int **,struct tl_tree**) ;

void *tlcomb_fetch_maybe (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  void **newIP = *(IP ++);
  if (TLUNI_START (newIP, Data, arr, vars) != TLUNI_OK) {
    -- arr;
    return 0;
  }
  TLUNI_NEXT;
}
