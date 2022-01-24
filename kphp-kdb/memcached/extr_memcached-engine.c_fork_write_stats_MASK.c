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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int child_pid ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  sfd ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6 (void) {
  if (child_pid) {
    return;
  }

  int res = FUNC3();

  if (res < 0) {
    FUNC4 (stderr, "fork: %m\n");
  } else if (!res) {
    FUNC0 (FUNC1 (sfd) >= 0);

    FUNC5();
    FUNC2 (0);
  } else {
    if (verbosity > 0) {
      FUNC4 (stderr, "created child process pid = %d\n", res);
    }
    child_pid = res;
  }
}