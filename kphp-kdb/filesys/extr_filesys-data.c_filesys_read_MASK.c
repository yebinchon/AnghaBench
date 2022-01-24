#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct filesys_inode {unsigned int index_filesize; int /*<<< orphan*/ * index_data; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct filesys_inode*,unsigned int,unsigned int,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct filesys_inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

__attribute__((used)) static int FUNC5 (struct filesys_inode *I, unsigned int offset, unsigned int length, char *data) {
  unsigned int blocksize;
  FUNC3 (data, 0, length);
  if (FUNC0 (I, offset, length, data, &blocksize) == length) {
    return length;
  }

  FUNC4 (3, "filesys_read: before memset\n");

  if (offset >= I->index_filesize) {
    /* avoid loading metafile, if we really doesn't need it */
    return blocksize;
  }
  FUNC1 (I);
  if (I->index_data) {
    unsigned int moved_bytes = I->index_filesize - offset;
    if (moved_bytes > length) {
      moved_bytes = length;
    }
    FUNC2 (data, &I->index_data[offset], moved_bytes);
    if (blocksize < moved_bytes) {
      blocksize = moved_bytes;
    }
  }
  unsigned int tmp;
  FUNC0 (I, offset, length, data, &tmp);
  return blocksize;
}