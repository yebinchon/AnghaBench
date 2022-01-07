
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_var_value_t ;
struct tl_type {int id; } ;
struct tl_combinator_tree {scalar_t__ act; int data; struct tl_combinator_tree* right; struct tl_combinator_tree* left; } ;


 scalar_t__ act_field ;
 scalar_t__ act_var ;
 int assert (int) ;
 int strcmp (int ,char*) ;
 int tl_get_var_value (int **,int) ;
 int tl_set_var_value (int **,struct tl_combinator_tree*,struct tl_combinator_tree*) ;
 struct tl_type* tl_tree_get_type (struct tl_combinator_tree*) ;

void change_var_ptrs (struct tl_combinator_tree *O, struct tl_combinator_tree *D, tree_var_value_t **V) {
  if (!O || !D) {
    assert (!O && !D);
    return;
  }
  if (O->act == act_field) {
    struct tl_type *t = tl_tree_get_type (O->left);
    if (t && (!strcmp (t->id, "#") || !strcmp (t->id, "Type"))) {
      tl_set_var_value (V, O, D);
    }
  }
  if (O->act == act_var) {
    assert (D->data == O->data);
    D->data = tl_get_var_value (V, O->data);
    assert (D->data);
  }
  change_var_ptrs (O->left, D->left, V);
  change_var_ptrs (O->right, D->right, V);
}
