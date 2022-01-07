
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ x; struct TYPE_4__* right; struct TYPE_4__* left; } ;
typedef TYPE_1__ tree_t ;


 int assert (int) ;
 TYPE_1__* new_tree_node (int,int) ;
 scalar_t__ readin_char () ;
 int readin_int () ;

tree_t* read_tree () {
  if (readin_char () == 0) {
    return 0;
  }
  int x = readin_int ();
  int y = readin_int ();
  tree_t *P = new_tree_node (x, y);
  P->left = read_tree ();
  P->right = read_tree ();
  if (P->left) { assert (P->left->x < P->x); }
  if (P->right) { assert (P->right->x > P->x); }
  return P;
}
