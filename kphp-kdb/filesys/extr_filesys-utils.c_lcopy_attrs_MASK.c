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
typedef  int /*<<< orphan*/  times ;
struct timeval {int /*<<< orphan*/  tv_sec; } ;
struct stat {int /*<<< orphan*/  st_mode; int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_atime; int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_uid; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int errno ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char*) ; 

int FUNC7 (char *filename, struct stat *S)  {
  if (!FUNC0 (S->st_mode)) {
    if (FUNC1 (filename, S->st_mode) < 0) {
      FUNC6 (1, "chmod for %s failed. %m\n", filename);
      return -1;
    }
  }
  if (FUNC2 (filename, S->st_uid, S->st_gid) < 0) {
    FUNC6 (1, "lchown for %s failed. %m\n", filename);
    return -1;
  }
  struct timeval times[2];
  FUNC4 (times, 0, sizeof (times));
  times[0].tv_sec = S->st_atime;
  times[1].tv_sec = S->st_mtime;
  errno = 0;
  if (FUNC3 (filename, times) < 0) {
    int err = errno;
    FUNC6 (1, "lutimes for %s failed. %m\n", filename);
    if (err == ENOSYS && !FUNC0 (S->st_mode)) {
      if (FUNC5 (filename, times) < 0) {
        FUNC6 (1, "utimes for %s failed. %m\n", filename);
        return -3;
      }
      errno = 0;
      return 0;
    }
    return -2;
  }
  return 0;
}