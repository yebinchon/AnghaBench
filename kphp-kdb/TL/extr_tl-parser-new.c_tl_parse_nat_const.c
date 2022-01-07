
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {scalar_t__ type; int len; long long* text; int nc; } ;
struct tl_combinator_tree {long long type_flags; int type; int act; } ;


 struct tl_combinator_tree* L ;
 int TL_ERROR (char*) ;
 int TL_FAIL ;
 int TL_INIT (struct tl_combinator_tree*) ;
 int act_nat_const ;
 struct tl_combinator_tree* alloc_ctree_node () ;
 int assert (int) ;
 scalar_t__ type_nat_const ;
 int type_num_value ;
 int vkprintf (int,char*,int,int,long long*) ;

struct tl_combinator_tree *tl_parse_nat_const (struct tree *T, int s) {
  assert (T->type == type_nat_const);
  assert (!T->nc);
  vkprintf (2, "tl_parse_nat_const: s = %d, val = %.*s\n", s, T->len, T->text);
  if (s > 0) {
    TL_ERROR ("Nat const can not preceed with %%\n");
    TL_FAIL;
  }
  assert (T->type == type_nat_const);
  assert (!T->nc);
  TL_INIT (L);
  L = alloc_ctree_node ();
  L->act = act_nat_const;
  L->type = type_num_value;
  int i;
  long long x = 0;
  for (i = 0; i < T->len; i++) {
    x = x * 10 + T->text[i] - '0';
  }
  L->type_flags = x;
  return L;
}
