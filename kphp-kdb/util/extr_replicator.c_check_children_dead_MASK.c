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
 int /*<<< orphan*/  SIGKILL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  WNOHANG ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int* pids ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,int*,int /*<<< orphan*/ ) ; 
 int workers ; 

__attribute__((used)) static void FUNC6 (void) {
  int i, j;
  for (j = 0; j < 11; j++) {
    for (i = 0; i < workers; i++) {
      if (pids[i]) {
        int status = 0;
        int res = FUNC5 (pids[i], &status, WNOHANG);
        if (res == pids[i]) {
          if (FUNC0 (status) || FUNC1 (status)) {
            pids[i] = 0;
          } else {
            break;
          }
        } else if (res == 0) {
          break;
        } else if (res != -1 || errno != EINTR) {
          pids[i] = 0;
        } else {
          break;
        }
      }
    }
    if (i == workers) {
      break;
    }
    if (j < 10) {
      FUNC4 (100000);
    }
  }
  if (j == 11) {
    int cnt = 0;
    for (i = 0; i < workers; i++) {
      if (pids[i]) {
        ++cnt;
        FUNC2 (pids[i], SIGKILL);
      }
    }
    FUNC3 ("WARNING: %d children unfinished --> they are now killed\n", cnt);
  }
}