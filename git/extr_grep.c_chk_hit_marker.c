
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct grep_expr* right; TYPE_1__* left; } ;
struct TYPE_6__ {TYPE_2__ binary; } ;
struct grep_expr {scalar_t__ node; int hit; TYPE_3__ u; } ;
struct TYPE_4__ {int hit; } ;


 scalar_t__ GREP_NODE_OR ;

__attribute__((used)) static int chk_hit_marker(struct grep_expr *x)
{

 while (1) {
  if (x->node != GREP_NODE_OR)
   return x->hit;
  if (!x->u.binary.left->hit)
   return 0;
  x = x->u.binary.right;
 }
}
