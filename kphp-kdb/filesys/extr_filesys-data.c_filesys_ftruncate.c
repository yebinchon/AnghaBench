
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct filesys_inode {unsigned int index_filesize; unsigned int filesize; int updates; void* index_data; } ;
struct TYPE_4__ {unsigned int block_offset; unsigned int block_length; void* data; } ;
typedef TYPE_1__ filesys_tree_t ;


 void* realloc (void*,unsigned int) ;
 unsigned int tot_allocated_data ;
 int tot_loaded_index_data ;
 int tree_delete (int ,unsigned int) ;
 TYPE_1__* tree_lowerbound (int ,unsigned int) ;
 TYPE_1__* tree_upperbound (int ,unsigned int) ;

__attribute__((used)) static int filesys_ftruncate (struct filesys_inode *I, unsigned int size) {
  if (I->index_filesize > size) {
    if (I->index_data) {
      I->index_data = realloc (I->index_data, size);
      tot_loaded_index_data -= I->index_filesize - size;
    }
    I->index_filesize = size;
  }

  filesys_tree_t *T;
  while ((T = tree_lowerbound (I->updates, size))) {
    I->updates = tree_delete (I->updates, T->block_offset);
  }

  if (size > 0) {
    T = tree_upperbound (I->updates, size - 1);
    if (T) {
      unsigned int to = T->block_offset, tr = to + T->block_length;
      if (tr > size) {
        T->block_length -= tr - size;
        T->data = realloc (T->data, T->block_length);
        tot_allocated_data -= tr - size;
      }
    }
  }
  I->filesize = size;
  return 0;
}
