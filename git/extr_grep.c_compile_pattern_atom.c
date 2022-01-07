
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grep_pat {int token; struct grep_pat* next; } ;
struct TYPE_2__ {struct grep_pat* atom; } ;
struct grep_expr {TYPE_1__ u; int node; } ;


 int GREP_CLOSE_PAREN ;
 int GREP_NODE_ATOM ;




 struct grep_expr* compile_pattern_or (struct grep_pat**) ;
 int die (char*) ;
 struct grep_expr* xcalloc (int,int) ;

__attribute__((used)) static struct grep_expr *compile_pattern_atom(struct grep_pat **list)
{
 struct grep_pat *p;
 struct grep_expr *x;

 p = *list;
 if (!p)
  return ((void*)0);
 switch (p->token) {
 case 130:
 case 128:
 case 129:
  x = xcalloc(1, sizeof (struct grep_expr));
  x->node = GREP_NODE_ATOM;
  x->u.atom = p;
  *list = p->next;
  return x;
 case 131:
  *list = p->next;
  x = compile_pattern_or(list);
  if (!*list || (*list)->token != GREP_CLOSE_PAREN)
   die("unmatched parenthesis");
  *list = (*list)->next;
  return x;
 default:
  return ((void*)0);
 }
}
