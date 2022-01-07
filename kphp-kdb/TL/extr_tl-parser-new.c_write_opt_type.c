
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree_var_value_t ;
struct tl_combinator_tree {int type; int act; struct tl_combinator_tree* right; TYPE_1__* left; } ;
struct TYPE_2__ {int type_flags; int data; } ;


 int act_arg ;
 int act_array ;
 int act_type ;
 int act_var ;
 int assert (struct tl_combinator_tree*) ;
 int schema_version ;
 int tl_get_var_value_num (int **,int ) ;

 int wint (int) ;
 int write_array (struct tl_combinator_tree*,int **,int*) ;
 int write_type_rec (struct tl_combinator_tree*,int ,int **,int*) ;

void write_opt_type (struct tl_combinator_tree *T, tree_var_value_t **v, int *last_var) {
  if (schema_version >= 1) {
  } else {
    wint (-20);
  }
  wint (tl_get_var_value_num (v, T->left->data));
  wint (T->left->type_flags);

  assert (T);
  T = T->right;
  switch (T->type) {
  case 128:
    if (T->act == act_array) {
      write_array (T, v, last_var);
    } else if (T->act == act_type || T->act == act_var || T->act == act_arg) {
      write_type_rec (T, 0, v, last_var);
    } else {
      assert (0);
    }
    break;
  default:
    assert (0);
  }
}
