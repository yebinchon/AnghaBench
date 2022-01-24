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
struct filesys_inode {scalar_t__ reference_count; } ;
struct filesys_directory_node {int /*<<< orphan*/  inode; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct filesys_directory_node*) ; 
 struct filesys_directory_node* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct filesys_inode*) ; 
 struct filesys_inode* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  lf_unlink ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*) ; 

__attribute__((used)) static int FUNC5 (const char *path) {
  FUNC4 (2, "filesys_unlink (%s)\n", path);
  struct filesys_directory_node *D = FUNC1 (path, lf_unlink);
  if (D == NULL) { return -ENOENT; }
  struct filesys_inode *I = FUNC3 (D->inode, -1);
  if (I == NULL) { return -EFAULT; }
  if (I->reference_count <= 0) {
    FUNC2 (I);
  }
  FUNC0 (D);
  return 0;
}