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
struct filesys_directory_node {scalar_t__ inode; } ;

/* Variables and functions */
 struct filesys_directory_node* FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct filesys_inode*,unsigned int,unsigned int,char*) ; 
 struct filesys_inode* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lf_find ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 

int FUNC4 (unsigned int offset, unsigned int size, const char *filename, char *output) {
  struct filesys_directory_node *D = FUNC0 (filename, lf_find);
  if (D == NULL) { return -1; }
  if (D->inode < 0) { return -2; }
  struct filesys_inode *I = FUNC2 (D->inode, 0);
  if (I == NULL) { return -3; }

  FUNC3 (3, "do_read: inode = %lld\n", D->inode);

  return FUNC1 (I, offset, size, output);
}