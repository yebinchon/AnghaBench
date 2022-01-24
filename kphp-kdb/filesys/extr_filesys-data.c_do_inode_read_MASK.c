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
struct filesys_inode {int dummy; } ;
typedef  int /*<<< orphan*/  inode_id_t ;

/* Variables and functions */
 int EBADF ; 
 int FUNC0 (struct filesys_inode*,unsigned int,unsigned int,char*) ; 
 struct filesys_inode* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2 (unsigned int offset, unsigned int size, inode_id_t inode, char *output) {
  struct filesys_inode *I = FUNC1 (inode, 0);
  if (I == NULL) { return -EBADF; }
  return FUNC0 (I, offset, size, output);
}