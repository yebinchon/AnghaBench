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
struct filesys_inode {scalar_t__ index_offset; long index_filesize; int /*<<< orphan*/ * index_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (struct filesys_inode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct filesys_inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idx_fd ; 
 int /*<<< orphan*/  lru_head ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (long) ; 
 scalar_t__ max_loaded_index_data ; 
 long FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,long) ; 
 scalar_t__ tot_loaded_index_data ; 
 int tot_loaded_metafiles ; 

__attribute__((used)) static void FUNC7 (struct filesys_inode *I) {
  if (I->index_offset < 0) {
    return;
  }

  if (I->index_data != NULL) {
    FUNC2 (I);
    FUNC0 (I);
    return;
  }

  I->index_data = FUNC5 (I->index_filesize);
  FUNC1 (FUNC4 (idx_fd, I->index_offset, SEEK_SET) >= 0);
  long r = FUNC6 (idx_fd, I->index_data, I->index_filesize);
  FUNC1 (r == I->index_filesize);
  tot_loaded_index_data += I->index_filesize;
  tot_loaded_metafiles++;
  FUNC0 (I);
  while (tot_loaded_metafiles > 1 && tot_loaded_index_data > max_loaded_index_data) {
    FUNC3 (lru_head);
  }
}