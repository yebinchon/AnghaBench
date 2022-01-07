
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree {scalar_t__ type; int nc; TYPE_1__** c; } ;
struct tl_combinator_tree {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 struct tl_combinator_tree* L ;
 int TL_INIT (struct tl_combinator_tree*) ;
 int TL_TRY (int ,struct tl_combinator_tree*) ;
 int assert (int) ;
 int tl_parse_any_term (TYPE_1__*,int) ;
 scalar_t__ type_percent ;
 scalar_t__ type_term ;
 int vkprintf (int,char*,int) ;

struct tl_combinator_tree *tl_parse_term (struct tree *T, int s) {
  vkprintf (2, "tl_parse_term: s = %d\n", s);
  assert (T->type == type_term);
  int i = 0;
  while (i < T->nc && T->c[i]->type == type_percent) { i ++; s ++; }
  assert (i < T->nc);
  TL_INIT (L);
  while (i < T->nc) {
    TL_TRY (tl_parse_any_term (T->c[i], s), L);
    s = 0;
    i ++;
  }
  return L;
}
