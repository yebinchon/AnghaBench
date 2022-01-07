
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_var_value_t ;
struct tl_combinator_tree {int right; int left; } ;


 int TLS_ARRAY ;
 int TLS_TREE_ARRAY ;
 int schema_version ;
 int wint (int) ;
 int write_tree (int ,int ,int **,int*) ;

void write_array (struct tl_combinator_tree *T, tree_var_value_t **v, int *last_var) {
  if (schema_version == 1) {
    wint (TLS_TREE_ARRAY);
  } else if (schema_version == 2) {
    wint (TLS_ARRAY);
  } else {
    wint (-8);
  }
  write_tree (T->left, 0, v, last_var);
  write_tree (T->right, 0, v, last_var);
}
