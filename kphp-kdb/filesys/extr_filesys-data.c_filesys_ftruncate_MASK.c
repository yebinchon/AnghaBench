#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct filesys_inode {unsigned int index_filesize; unsigned int filesize; int /*<<< orphan*/  updates; void* index_data; } ;
struct TYPE_4__ {unsigned int block_offset; unsigned int block_length; void* data; } ;
typedef  TYPE_1__ filesys_tree_t ;

/* Variables and functions */
 void* FUNC0 (void*,unsigned int) ; 
 unsigned int tot_allocated_data ; 
 int /*<<< orphan*/  tot_loaded_index_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4 (struct filesys_inode *I, unsigned int size) {
  if (I->index_filesize > size) {
    if (I->index_data) {
      I->index_data = FUNC0 (I->index_data, size);
      tot_loaded_index_data -= I->index_filesize - size;
    }
    I->index_filesize = size;
  }

  filesys_tree_t *T;
  while ((T = FUNC2 (I->updates, size))) {
    I->updates = FUNC1 (I->updates, T->block_offset);
  }

  if (size > 0) {
    T = FUNC3 (I->updates, size - 1);
    if (T) {
      unsigned int to = T->block_offset, tr = to + T->block_length;
      if (tr > size) {
        T->block_length -= tr - size;
        T->data = FUNC0 (T->data, T->block_length);
        tot_allocated_data -= tr - size;
      }
    }
  }
  I->filesize = size;
  return 0;
}