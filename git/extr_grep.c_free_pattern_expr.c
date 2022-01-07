
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct grep_expr* right; struct grep_expr* left; } ;
struct TYPE_4__ {TYPE_1__ binary; struct grep_expr* unary; } ;
struct grep_expr {int node; TYPE_2__ u; } ;







 int free (struct grep_expr*) ;

__attribute__((used)) static void free_pattern_expr(struct grep_expr *x)
{
 switch (x->node) {
 case 128:
 case 131:
  break;
 case 130:
  free_pattern_expr(x->u.unary);
  break;
 case 132:
 case 129:
  free_pattern_expr(x->u.binary.left);
  free_pattern_expr(x->u.binary.right);
  break;
 }
 free(x);
}
