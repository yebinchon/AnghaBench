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
struct lev_filesys_ftruncate {unsigned int size; int /*<<< orphan*/  inode; } ;
struct filesys_inode {int dummy; } ;
typedef  int /*<<< orphan*/  inode_id_t ;

/* Variables and functions */
 int EBADF ; 
 int /*<<< orphan*/  LEV_FILESYS_FTRUNCATE ; 
 struct lev_filesys_ftruncate* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct filesys_inode*,unsigned int) ; 
 struct filesys_inode* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3 (inode_id_t inode, unsigned int size) {
  struct filesys_inode *I = FUNC2 (inode, 0);
  if (I == NULL) { return -EBADF; }
  struct lev_filesys_ftruncate *E = FUNC0 (LEV_FILESYS_FTRUNCATE, sizeof (struct lev_filesys_ftruncate), 0);
  E->inode = inode;
  E->size = size;
  return FUNC1 (I, size);
}