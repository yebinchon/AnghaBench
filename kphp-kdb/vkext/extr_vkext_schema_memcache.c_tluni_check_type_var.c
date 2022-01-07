
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct tl_tree {int dummy; } ;
struct TYPE_2__ {int (* eq ) (struct tl_tree*,struct tl_tree*) ;} ;


 int TLUNI_NEXT ;
 TYPE_1__* TL_TREE_METHODS (struct tl_tree*) ;
 int stub1 (struct tl_tree*,struct tl_tree*) ;

void *tluni_check_type_var (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  struct tl_tree *x = *(--Data);
  struct tl_tree *y = vars[(long)*(IP ++)];
  if (!TL_TREE_METHODS (y)->eq (y, x)) {
    return 0;
  }
  TLUNI_NEXT;
}
