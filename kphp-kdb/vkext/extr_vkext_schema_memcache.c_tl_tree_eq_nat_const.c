
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_tree {int dummy; } ;


 scalar_t__ var_nat_const_to_int (struct tl_tree*) ;

int tl_tree_eq_nat_const (struct tl_tree *x, struct tl_tree *y) {

  return var_nat_const_to_int (x) == var_nat_const_to_int (y);
}
