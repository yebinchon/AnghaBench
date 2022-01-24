#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct filesys_inode {int /*<<< orphan*/  updates; } ;
struct TYPE_5__ {unsigned int block_length; unsigned int block_offset; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ filesys_tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC7 (int,char*,unsigned int,...) ; 

__attribute__((used)) static unsigned int FUNC8 (struct filesys_inode *I, unsigned int offset, unsigned int length, char *data, unsigned int *blocksize) {
  const unsigned int right = offset + length;
  unsigned int bytes = 0;
  *blocksize = 0;

  if (verbosity >= 3) {
    FUNC1 (I->updates);
  }

  if (offset > 0) {
    filesys_tree_t *T = FUNC6 (I->updates, offset - 1);
    if (verbosity >= 3) {
      FUNC2 (stderr, "copy_updates: T = %p\n", T);
      FUNC3 (T->data, 1, T->block_length, stderr);
    }
    if (T != NULL) {
      unsigned int to = T->block_offset, tr = to + T->block_length;

      FUNC7 (3, "copy_updates: tr = %d, to = %d\n", to, tr);

      *blocksize = tr - offset;
      FUNC0 (to < offset);
      if (tr > offset) {
        unsigned int moved_bytes = tr - offset;
        if (moved_bytes > length) {
          moved_bytes = length;
        }

        FUNC7 (3, "copy_updates: moved_bytes = %d, start pos %d\n", moved_bytes, offset - T->block_offset);

        FUNC4 (data, &T->data[offset - T->block_offset], moved_bytes);
        bytes += moved_bytes;
      }
    }
  }
  unsigned int l = offset;
  while (l < right) {
    filesys_tree_t *T = FUNC5 (I->updates, l);
    if (T == NULL) {
      break;
    }
    l = T->block_offset;
    if (l >= right) {
      break;
    }
    *blocksize = (l + T->block_length) - offset;
    unsigned int moved_bytes = length - (l - offset);
    if (moved_bytes > T->block_length) {
      moved_bytes = T->block_length;
    }

    FUNC7 (3, "copy_updates: moved_bytes = %d, dest pos %d\n", moved_bytes, l - offset);

    bytes += moved_bytes;
    FUNC4 (&data[l - offset], &T->data[0], moved_bytes);
    l += T->block_length;
  }
  FUNC0 (bytes <= length);

  FUNC7 (3, "copy_updates: returns %d\n", bytes);

  return bytes;
}