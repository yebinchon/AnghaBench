
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct grep_expr* right; } ;
struct TYPE_3__ {TYPE_2__ binary; } ;
struct grep_expr {scalar_t__ node; TYPE_1__ u; } ;


 scalar_t__ GREP_NODE_OR ;
 scalar_t__ GREP_NODE_TRUE ;
 int assert (int) ;

__attribute__((used)) static struct grep_expr *grep_splice_or(struct grep_expr *x, struct grep_expr *y)
{
 struct grep_expr *z = x;

 while (x) {
  assert(x->node == GREP_NODE_OR);
  if (x->u.binary.right &&
      x->u.binary.right->node == GREP_NODE_TRUE) {
   x->u.binary.right = y;
   break;
  }
  x = x->u.binary.right;
 }
 return z;
}
