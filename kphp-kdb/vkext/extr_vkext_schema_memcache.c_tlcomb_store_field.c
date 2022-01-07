
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int TLUNI_NEXT ;
 int fprintf (int ,char*,char*,...) ;
 int ** get_field (int *,char*,int) ;
 int stderr ;

void *tlcomb_store_field (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  char *id = *(IP ++);
  int num = (long)*(IP ++);




  zval **v = get_field (*arr, id, num);




  if (!v) { return 0; }
  *(++arr) = *v;
  TLUNI_NEXT;
}
