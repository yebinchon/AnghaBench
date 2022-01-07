
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int type; } ;
struct tl_combinator_tree {int dummy; } ;


 int assert (int ) ;
 int fprintf (int ,char*,int) ;
 int stderr ;
 struct tl_combinator_tree* tl_parse_expr (struct tree*,int) ;
 struct tl_combinator_tree* tl_parse_ident (struct tree*,int) ;
 struct tl_combinator_tree* tl_parse_nat_const (struct tree*,int) ;
 struct tl_combinator_tree* tl_parse_nat_term (struct tree*,int) ;
 struct tl_combinator_tree* tl_parse_subexpr (struct tree*,int) ;
 struct tl_combinator_tree* tl_parse_term (struct tree*,int) ;
 struct tl_combinator_tree* tl_parse_type_term (struct tree*,int) ;
struct tl_combinator_tree *tl_parse_any_term (struct tree *T, int s) {
  switch (T->type) {
  case 129:
    return tl_parse_type_term (T, s);
  case 133:
    return tl_parse_nat_term (T, s);
  case 131:
    return tl_parse_term (T, s);
  case 135:
    return tl_parse_expr (T, s);
  case 132:
    return tl_parse_subexpr (T, s);
  case 134:
    return tl_parse_nat_const (T, s);
  case 130:
  case 128:
    return tl_parse_ident (T, s);
  default:
    fprintf (stderr, "type = %d\n", T->type);
    assert (0);
    return 0;
  }
}
