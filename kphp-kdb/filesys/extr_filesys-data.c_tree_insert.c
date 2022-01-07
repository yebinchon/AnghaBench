
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int y; unsigned int block_offset; struct TYPE_8__* right; struct TYPE_8__* left; } ;
typedef TYPE_1__ filesys_tree_t ;


 TYPE_1__* new_tree_node (unsigned int,int,unsigned int,char*) ;
 int tree_split (TYPE_1__**,TYPE_1__**,TYPE_1__*,unsigned int) ;

__attribute__((used)) static filesys_tree_t *tree_insert (filesys_tree_t *T, unsigned int block_offset, int y, unsigned int block_length, char *data) {
  filesys_tree_t *P;
  if (!T) {
    P = new_tree_node (block_offset, y, block_length, data);
    return P;
  }
  if (T->y >= y) {
    if (block_offset < T->block_offset) {
      T->left = tree_insert (T->left, block_offset, y, block_length, data);
    } else {
      T->right = tree_insert (T->right, block_offset, y, block_length, data);
    }
    return T;
  }
  P = new_tree_node (block_offset, y, block_length, data);
  tree_split (&P->left, &P->right, T, block_offset);
  return P;
}
