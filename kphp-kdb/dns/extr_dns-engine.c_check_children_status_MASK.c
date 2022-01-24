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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SIGTERM ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  WNOHANG ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int parent_pid ; 
 int* pids ; 
 scalar_t__ slave_mode ; 
 int FUNC7 (int,int*,int /*<<< orphan*/ ) ; 
 int workers ; 

__attribute__((used)) static void FUNC8 (void) {
  if (workers) {
    int i;
    for (i = 0; i < workers; i++) {
      int status = 0;
      int res = FUNC7 (pids[i], &status, WNOHANG);
      if (res == pids[i]) {
        if (FUNC0 (status) || FUNC1 (status)) {
          FUNC6 ("Child %d terminated, aborting\n", pids[i]);
          pids[i] = 0;
          FUNC5 (SIGTERM);
          FUNC2 ();
          FUNC3 (EXIT_FAILURE);
        }
      } else if (res == 0) {
      } else if (res != -1 || errno != EINTR) {
        FUNC6 ("Child %d: unknown result during wait (%d, %m), aborting\n", pids[i], res);
        pids[i] = 0;
        FUNC5 (SIGTERM);
        FUNC2 ();
        FUNC3 (EXIT_FAILURE);
      }
    }
  } else if (slave_mode) {
    if (FUNC4 () != parent_pid) {
      FUNC6 ("Parent %d is changed to %d, aborting\n", parent_pid, FUNC4 ());
      FUNC3 (EXIT_FAILURE);
    }
  }
}