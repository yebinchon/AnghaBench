
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct grep_pat {scalar_t__ token; int pattern; } ;
struct TYPE_3__ {struct grep_expr* right; struct grep_expr* left; } ;
struct TYPE_4__ {TYPE_1__ binary; } ;
struct grep_expr {TYPE_2__ u; int node; } ;


 scalar_t__ GREP_CLOSE_PAREN ;
 int GREP_NODE_OR ;
 struct grep_expr* compile_pattern_and (struct grep_pat**) ;
 int die (char*,int ) ;
 struct grep_expr* xcalloc (int,int) ;

__attribute__((used)) static struct grep_expr *compile_pattern_or(struct grep_pat **list)
{
 struct grep_pat *p;
 struct grep_expr *x, *y, *z;

 x = compile_pattern_and(list);
 p = *list;
 if (x && p && p->token != GREP_CLOSE_PAREN) {
  y = compile_pattern_or(list);
  if (!y)
   die("not a pattern expression %s", p->pattern);
  z = xcalloc(1, sizeof (struct grep_expr));
  z->node = GREP_NODE_OR;
  z->u.binary.left = x;
  z->u.binary.right = y;
  return z;
 }
 return x;
}
