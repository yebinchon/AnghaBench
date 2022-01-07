
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct grep_expr* right; struct grep_expr* left; } ;
struct TYPE_4__ {TYPE_1__ binary; } ;
struct grep_expr {TYPE_2__ u; int node; } ;


 int GREP_NODE_OR ;
 struct grep_expr* xcalloc (int,int) ;

__attribute__((used)) static struct grep_expr *grep_or_expr(struct grep_expr *left, struct grep_expr *right)
{
 struct grep_expr *z = xcalloc(1, sizeof(*z));
 z->node = GREP_NODE_OR;
 z->u.binary.left = left;
 z->u.binary.right = right;
 return z;
}
