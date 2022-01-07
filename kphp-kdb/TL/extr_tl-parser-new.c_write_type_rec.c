
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree_var_value_t ;
struct tl_type {int name; } ;
struct tl_combinator_tree {scalar_t__ act; int flags; struct tl_type* data; TYPE_1__* right; struct tl_combinator_tree* left; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int TLS_EXPR_NAT ;
 int TLS_EXPR_TYPE ;
 int TLS_TREE_TYPE ;
 int TLS_TREE_TYPE_VAR ;
 int TLS_TYPE_EXPR ;
 int TLS_TYPE_VAR ;
 scalar_t__ act_arg ;
 scalar_t__ act_type ;
 scalar_t__ act_var ;
 int assert (int) ;
 int schema_version ;
 int tl_get_var_value_num (int **,struct tl_type*) ;
 scalar_t__ type_num ;
 scalar_t__ type_num_value ;
 int wint (int) ;
 int write_tree (TYPE_1__*,int ,int **,int*) ;
 int write_type_flags (int ) ;
 int write_var_type_flags (int ) ;

void write_type_rec (struct tl_combinator_tree *T, int cc, tree_var_value_t **v, int *last_var) {
  if (T->act == act_arg) {
    write_type_rec (T->left, cc + 1, v, last_var);
    if (schema_version >= 2) {
      if (T->right->type == type_num_value || T->right->type == type_num) {
        wint (TLS_EXPR_NAT);
      } else {
        wint (TLS_EXPR_TYPE);
      }
    }
    write_tree (T->right, 0, v, last_var);
  } else {
    assert (T->act == act_var || T->act == act_type);
    if (T->act == act_var) {
      assert (!cc);
      if (schema_version == 1) {
        wint (TLS_TREE_TYPE_VAR);
      } else if (schema_version == 2) {
        wint (TLS_TYPE_VAR);
      } else {
        wint (-6);
      }
      wint (tl_get_var_value_num (v, T->data));
      write_var_type_flags (T->flags);

    } else {
      if (schema_version == 1) {
        wint (TLS_TREE_TYPE);
      } else if (schema_version == 2) {
        wint (TLS_TYPE_EXPR);
      } else {
        wint (-7);
      }
      struct tl_type *t = T->data;
      wint (t->name);
      write_type_flags (T->flags);

      wint (cc);

    }
  }
}
