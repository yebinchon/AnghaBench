
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* positions; struct TYPE_4__* left; struct TYPE_4__* right; } ;
typedef TYPE_1__ tree_t ;


 TYPE_1__ free_tree_head ;
 int free_tree_nodes ;
 int tree_positions_bytes ;
 int zzfree (int*,int) ;

__attribute__((used)) static void free_tree_node (tree_t *T) {
  if (T->positions) {
    int sz = 4 * (T->positions[0] + 1);
    tree_positions_bytes -= sz;
    zzfree (T->positions, sz);
    T->positions = ((void*)0);
  }
  (T->right = free_tree_head.right)->left = T;
  free_tree_head.right = T;
  T->left = &free_tree_head;
  free_tree_nodes++;
}
