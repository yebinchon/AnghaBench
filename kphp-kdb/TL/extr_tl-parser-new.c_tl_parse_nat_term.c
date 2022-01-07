
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {scalar_t__ type; int nc; int * c; } ;
struct tl_combinator_tree {scalar_t__ type; } ;


 int TL_ERROR (char*,int ) ;
 int TL_FAIL ;
 int TL_TYPE (scalar_t__) ;
 int assert (int) ;
 struct tl_combinator_tree* tl_parse_term (int ,int) ;
 scalar_t__ type_nat_term ;
 scalar_t__ type_num ;
 scalar_t__ type_num_value ;

struct tl_combinator_tree *tl_parse_nat_term (struct tree *T, int s) {
  assert (T->type == type_nat_term);
  assert (T->nc == 1);
  struct tl_combinator_tree *Z = tl_parse_term (T->c[0], s);
  if (!Z || (Z->type != type_num && Z->type != type_num_value)) { if (Z) { TL_ERROR ("nat_term: found type %s\n", TL_TYPE (Z->type)); }TL_FAIL; }
  return Z;
}
