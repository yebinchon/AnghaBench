
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int INC_REF (void*) ;
 int TLUNI_NEXT ;
 int fprintf (int ,char*) ;
 int stderr ;

void *tlsub_push_type_var (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  *(Data ++) = vars[(long)*(IP ++)];



  INC_REF (*(Data - 1));
  TLUNI_NEXT;
}
