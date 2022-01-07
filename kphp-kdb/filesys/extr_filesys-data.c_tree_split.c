
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int block_offset; struct TYPE_5__* right; struct TYPE_5__* left; } ;
typedef TYPE_1__ filesys_tree_t ;



__attribute__((used)) static void tree_split (filesys_tree_t **L, filesys_tree_t **R, filesys_tree_t *T, unsigned int block_offset) {
  if (!T) {
    *L = *R = ((void*)0);
    return;
  }
  if (block_offset < T->block_offset) {
    *R = T;
    tree_split (L, &T->left, T->left, block_offset);
  } else {
    *L = T;
    tree_split (&T->right, R, T->right, block_offset);
  }
}
