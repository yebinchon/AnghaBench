
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct tl_tree_type {scalar_t__ type; int children_num; struct tl_tree** children; TYPE_1__ self; } ;
struct tl_tree {int dummy; } ;
struct TYPE_4__ {scalar_t__ (* type ) (void*) ;int (* eq ) (struct tl_tree*,struct tl_tree*) ;} ;


 int FLAGS_MASK ;
 scalar_t__ NODE_TYPE_TYPE ;
 TYPE_2__* TL_TREE_METHODS (struct tl_tree*) ;
 scalar_t__ stub1 (void*) ;
 int stub2 (struct tl_tree*,struct tl_tree*) ;

int tl_tree_eq_type (struct tl_tree *_x, struct tl_tree *_y) {
  if (TL_TREE_METHODS (_y)->type ((void *)_y) != NODE_TYPE_TYPE) { return 0; }
  struct tl_tree_type *x = (void *)_x;
  struct tl_tree_type *y = (void *)_y;
  if ((x->self.flags & FLAGS_MASK) != (y->self.flags & FLAGS_MASK)) { return 0; }
  if (x->type != y->type) { return 0; }
  int i;
  for (i = 0; i < x->children_num; i++) {
    if (!TL_TREE_METHODS (x->children[i])->eq (x->children[i], y->children[i])) {
      return 0;
    }
  }
  return 1;
}
