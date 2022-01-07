
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {scalar_t__ type; int nc; int * c; } ;
struct tl_combinator_tree {int dummy; } ;


 int assert (int) ;
 struct tl_combinator_tree* tl_parse_nat_term (int ,int ) ;
 scalar_t__ type_multiplicity ;

struct tl_combinator_tree *tl_parse_multiplicity (struct tree *T) {
  assert (T->type == type_multiplicity);
  assert (T->nc == 1);
  return tl_parse_nat_term (T->c[0], 0);
}
