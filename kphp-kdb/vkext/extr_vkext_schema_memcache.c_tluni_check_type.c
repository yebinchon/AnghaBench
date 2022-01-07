
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct tl_tree_type {int children_num; int * children; int type; } ;
struct tl_tree {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* type ) (void*) ;} ;


 scalar_t__ NODE_TYPE_TYPE ;
 int TLUNI_NEXT ;
 TYPE_1__* TL_TREE_METHODS (struct tl_tree_type*) ;
 scalar_t__ stub1 (void*) ;

void *tluni_check_type (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  struct tl_tree_type *res = *(--Data);


  if (TL_TREE_METHODS (res)->type ((void *)res) != NODE_TYPE_TYPE) { return 0; }
  if (res->type != *(IP ++)) { return 0; }


  int i;
  for (i = res->children_num - 1; i >= 0; i--) {
    *(Data ++ ) = res->children[i];
  }
  TLUNI_NEXT;
}
