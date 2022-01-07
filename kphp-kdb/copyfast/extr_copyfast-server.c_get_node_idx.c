
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ tree_t ;


 int id_tree ;
 TYPE_1__* tree_lookup (int ,long long) ;

int get_node_idx (long long id) {
  tree_t *T = tree_lookup (id_tree, id);
  if (T) {
    return T->data;
  }
  return -1;
}
