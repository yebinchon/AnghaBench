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
struct filesys_directory_node {scalar_t__ inode; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,unsigned int,scalar_t__,char*) ; 
 struct filesys_directory_node* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lf_find ; 

int FUNC2 (unsigned int offset, unsigned int size, char *input, const char *filename) {
  struct filesys_directory_node *D = FUNC1 (filename, lf_find);
  if (D == NULL) { return -1; }
  if (D->inode < 0) { return -2; }
  return FUNC0 (offset, size, D->inode, input);
}