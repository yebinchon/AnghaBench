
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_var_value_t ;
struct tl_combinator_tree {int dummy; } ;


 int ** _T ;
 int __tok ;
 int check_nat_val ;
 int tree_act_var_value (int *,int ) ;
 int uniformize (struct tl_combinator_tree*,struct tl_combinator_tree*,int **) ;

int check_constructors_equal (struct tl_combinator_tree *L, struct tl_combinator_tree *R, tree_var_value_t **T) {
  if (!uniformize (L, R, T)) { return 0; }
  __tok = 1;
  _T = T;
  tree_act_var_value (*T, check_nat_val);
  return __tok;
}
