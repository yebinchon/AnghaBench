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

/* Variables and functions */
 int /*<<< orphan*/  F_WRLCK ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int,int) ; 
 scalar_t__ pid_fd ; 
 int /*<<< orphan*/  pid_filename ; 
 int FUNC5 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (scalar_t__,char*,int) ; 

__attribute__((used)) static int FUNC8 (const char *const dir) {
  char a[PATH_MAX];
  FUNC0 (FUNC5 (a, PATH_MAX, "%s/%s", dir, ".copyexec-commit.pid") < PATH_MAX);
  pid_fd = FUNC4 (a, O_CREAT | O_WRONLY | O_EXCL, 0660);
  if (pid_fd < 0) {
    FUNC2 ("creating %s failed. %m\n", a);
    return -1;
  }
  if (FUNC3 (pid_fd, F_WRLCK) < 0) {
    FUNC2 ("lock %s failed. %m\n", a);
    return -2;
  }
  pid_filename = FUNC6 (a);
  int l = FUNC5 (a, PATH_MAX, "%lld\n", (long long) FUNC1 ());
  FUNC0 (l < PATH_MAX);
  FUNC0 (FUNC7 (pid_fd, a, l) == l);
  return 1;
}