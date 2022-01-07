
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_combinator_tree {scalar_t__ type; struct tl_combinator_tree* right; struct tl_combinator_tree* left; } ;


 int assert (int) ;
 scalar_t__ type_list ;
 scalar_t__ type_list_item ;

int count_list_size (struct tl_combinator_tree *T) {
  assert (T->type == type_list || T->type == type_list_item);
  if (T->type == type_list_item) {
    return 1;
  } else {
    return count_list_size (T->left) + count_list_size (T->right);
  }
}
