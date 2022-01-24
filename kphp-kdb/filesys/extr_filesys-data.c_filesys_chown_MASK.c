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
struct filesys_directory_node {unsigned short uid; unsigned short gid; } ;

/* Variables and functions */
 int EACCES ; 
 int ENOENT ; 
 struct filesys_directory_node* FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 unsigned short FUNC1 () ; 
 int /*<<< orphan*/  lf_find ; 

__attribute__((used)) static int FUNC2 (const char *path, unsigned short uid, unsigned short gid) {
  struct filesys_directory_node *D = FUNC0 (path, lf_find);
  if (D == NULL) {
    return -ENOENT;
  }
  if (FUNC1 () && FUNC1 () != D->uid) {
    return -EACCES;
  }
  D->uid = uid;
  D->gid = gid;
  return 0;
}