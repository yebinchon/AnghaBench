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
typedef  scalar_t__ inode_id_t ;

/* Variables and functions */
 int ENOENT ; 
 int S_IFLNK ; 
 scalar_t__ FUNC0 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct filesys_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 struct filesys_inode* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6 (const char *oldpath, const char *newpath) {
  inode_id_t inode = FUNC0 (newpath, 0777 | S_IFLNK, FUNC4 (), FUNC3 ());
  if (inode < 0) {
    return -ENOENT;
  }
  struct filesys_inode *I = FUNC2 (inode, 0);
  FUNC1 (I, 0, FUNC5 (oldpath), oldpath);
  return 0;
}