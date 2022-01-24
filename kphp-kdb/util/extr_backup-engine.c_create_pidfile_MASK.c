#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 scalar_t__ EISDIR ; 
 scalar_t__ ENOENT ; 
 int MAX_FPATH_LEN ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  do_remove_pidfile ; 
 char* dstdir ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 int FUNC8 (char*,int,...) ; 
 char* pidfile ; 
 int pidfile_created ; 
 int FUNC9 (int,char*,int) ; 
 int FUNC10 (char*,char*,...) ; 
 scalar_t__ FUNC11 (char*,TYPE_1__*) ; 
 TYPE_1__ tmp_stat ; 
 scalar_t__ FUNC12 (char*) ; 
 int FUNC13 (int,char*,int) ; 

__attribute__((used)) static int FUNC14 (void) {
  static char tmp_buff[32];
  int old_pid, fd;

  FUNC1 (FUNC10 (pidfile, "%s/backup.pid", dstdir) < MAX_FPATH_LEN);

  if (FUNC11 (pidfile, &tmp_stat) >= 0) {
    if (!FUNC0 (tmp_stat.st_mode)) {
      errno = EISDIR;
      return -1;
    }
    int fd = FUNC8 (pidfile, O_RDONLY);
    if (fd < 0) {
      return -1;
    }
    int r = FUNC9 (fd, tmp_buff, 16);
    FUNC4 (fd);
    if (r < 0) {
      return -1;
    }
    if (r < 16) {
      tmp_buff[r] = 0;
      old_pid = FUNC3 (tmp_buff);
      if (old_pid > 0) {
        FUNC10 (tmp_buff, "/proc/%d/", old_pid);
        if (FUNC11 (tmp_buff, &tmp_stat) >= 0) {
          FUNC7 ("fatal: destination directory %s already locked by process %d\n", dstdir, old_pid);
          FUNC5 (2);
        }
      }
    }
    FUNC7 ("warning: removing stale pid file %s\n", pidfile);
    if (FUNC12 (pidfile) < 0 && errno != ENOENT) {
      return -1;
    }
  }

  fd = FUNC8 (pidfile, O_WRONLY | O_CREAT | O_EXCL, 0640);
  if (fd < 0) {
    return -1;
  }

  pidfile_created = 1;
  FUNC2 (do_remove_pidfile);	/* think about this */

  int s = FUNC10 (tmp_buff, "%d\n", FUNC6());
  if (FUNC13 (fd, tmp_buff, s) != s) {
    FUNC4 (fd);
    return -1;
  }
  FUNC4 (fd);
  return 0;
}