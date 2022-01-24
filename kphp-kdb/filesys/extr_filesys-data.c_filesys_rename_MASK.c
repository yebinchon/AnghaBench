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
struct filesys_inode {int /*<<< orphan*/  reference_count; } ;
struct filesys_directory_node {scalar_t__ inode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  mode; } ;
typedef  scalar_t__ inode_id_t ;

/* Variables and functions */
 int EFAULT ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct filesys_directory_node*) ; 
 struct filesys_directory_node* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 struct filesys_inode* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lf_creat ; 
 int /*<<< orphan*/  lf_find ; 
 int /*<<< orphan*/  lf_unlink ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*,char const*) ; 

__attribute__((used)) static int FUNC5 (const char *src_filename, const char *dest_filename) {
  FUNC4 (2, "filesys_rename (%s, %s)\n", src_filename, dest_filename);

  struct filesys_directory_node *D = FUNC2 (src_filename, lf_find);
  if (D == NULL) { return -ENOENT; }
  if (D->inode < 0) { return -ENOENT; }
  struct filesys_directory_node *E = FUNC2 (dest_filename, lf_find);
  if (E != NULL && E->inode == D->inode) {
    /* If  oldpath  and  newpath are existing hard links referring to the same
       file, then rename() does nothing, and returns a success status. */
    return 0;
  }

  inode_id_t inode = D->inode;
  struct filesys_inode *I = FUNC3 (inode, 0);
  if (I == NULL) { return -EFAULT; }
  if (E != NULL) {
    E = FUNC2 (dest_filename, lf_unlink);
    FUNC0 (E != NULL);
    FUNC1 (E);
  }

  E = FUNC2 (dest_filename, lf_creat);
  if (E == NULL) { return -ENOENT; }
  I->reference_count++;
  E->inode = inode;
  E->mode = D->mode;
  E->uid = D->uid;
  E->gid = D->gid;
  D = FUNC2 (src_filename, lf_unlink);
  FUNC0 (D != NULL);
  FUNC1 (D);
  return 0;
}