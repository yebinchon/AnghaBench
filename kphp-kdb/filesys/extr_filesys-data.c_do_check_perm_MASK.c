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
struct filesys_directory_node {int mode; unsigned short uid; scalar_t__ gid; } ;

/* Variables and functions */
 int EACCES ; 
 int errno ; 
 scalar_t__ FUNC0 () ; 
 unsigned short FUNC1 () ; 

int FUNC2 (struct filesys_directory_node *D, int mode) {
  unsigned short uid = FUNC1 ();
  if (!uid) {
    return 0;
  }
  int o = (D->mode >> ((D->uid == uid) ? 6 : (D->gid == FUNC0 ()) ? 3 : 0)) & 7;
  if ((o & mode) != mode) {
    errno = EACCES;
    return -EACCES;
  }
  return 0;
}