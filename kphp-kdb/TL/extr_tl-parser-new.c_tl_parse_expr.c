
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {scalar_t__ type; int nc; int * c; } ;
struct tl_combinator_tree {int dummy; } ;


 struct tl_combinator_tree* L ;
 int TL_INIT (struct tl_combinator_tree*) ;
 int TL_TRY (int ,struct tl_combinator_tree*) ;
 int assert (int) ;
 int tl_parse_subexpr (int ,int) ;
 scalar_t__ type_expr ;
 int vkprintf (int,char*,int) ;

struct tl_combinator_tree *tl_parse_expr (struct tree *T, int s) {
  assert (T->type == type_expr);
  assert (T->nc >= 1);
  vkprintf (2, "tl_parse_expr: s = %d\n", s);
  int i;
  TL_INIT (L);
  for (i = 0; i < T->nc; i++) {
    TL_TRY (tl_parse_subexpr (T->c[i], s), L);
    s = 0;
  }
  return L;
}
