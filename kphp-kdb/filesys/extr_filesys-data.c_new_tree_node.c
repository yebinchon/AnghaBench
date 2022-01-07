
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int block_offset; int y; char* data; unsigned int block_length; scalar_t__ right; scalar_t__ left; } ;
typedef TYPE_1__ filesys_tree_t ;


 int alloc_tree_nodes ;
 int assert (TYPE_1__*) ;
 TYPE_1__* zmalloc (int) ;

__attribute__((used)) static filesys_tree_t *new_tree_node (unsigned int block_offset, int y, unsigned int block_length, char *data) {
  filesys_tree_t *P;
  P = zmalloc (sizeof (filesys_tree_t));
  assert (P);
  alloc_tree_nodes++;
  P->left = P->right = 0;
  P->block_offset = block_offset;
  P->y = y;
  P->data = data;
  P->block_length = block_length;
  return P;
}
