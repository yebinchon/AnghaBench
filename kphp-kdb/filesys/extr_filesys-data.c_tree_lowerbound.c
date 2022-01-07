
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int block_offset; struct TYPE_4__* right; struct TYPE_4__* left; } ;
typedef TYPE_1__ filesys_tree_t ;



__attribute__((used)) static filesys_tree_t *tree_lowerbound (filesys_tree_t *T, unsigned int block_offset) {
  filesys_tree_t *R = ((void*)0);
  while (T) {
    if (block_offset < T->block_offset) {
      R = T;
      T = T->left;
    } else if (block_offset > T->block_offset) {
      T = T->right;
    } else {
      return T;
    }
  }
  return R;
}
