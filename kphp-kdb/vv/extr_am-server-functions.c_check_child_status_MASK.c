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
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  WNOHANG ; 
 int child_pid ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6 (void) {
  if (!child_pid) {
    return;
  }
  int status = 0;
  int res = FUNC5 (child_pid, &status, WNOHANG);
  if (res == child_pid) {
    if (FUNC1 (status) || FUNC2 (status)) {
      FUNC4 (1, "child process %d terminated: exited = %d, signaled = %d, exit code = %d\n",
        child_pid, FUNC1 (status) ? 1 : 0, FUNC2 (status) ? 1 : 0, FUNC0 (status));
      child_pid = 0;
    }
  } else if (res == -1) {
    if (errno != EINTR) {
      FUNC3 ("waitpid (%d): %m\n", child_pid);
      child_pid = 0;
    }
  } else if (res) {
    FUNC3 ("waitpid (%d) returned %d???\n", child_pid, res);
  }
}