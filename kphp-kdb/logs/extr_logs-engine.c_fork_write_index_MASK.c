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
 int /*<<< orphan*/ * binlogname ; 
 int child_pid ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ force_write_index ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

void FUNC5 (void) {
  if (child_pid) {
    if (verbosity > 0) {
      FUNC3 (stderr, "process with pid %d already generates index, skipping\n", child_pid);
    }
    return;
  }

  FUNC1();

  int res = FUNC2();

  if (res < 0) {
    FUNC3 (stderr, "fork: %m\n");
  } else if (!res) {
    binlogname = NULL;
    res = FUNC4();
    FUNC0 (res);
  } else {
    if (verbosity > 0) {
      FUNC3 (stderr, "created child process pid = %d\n", res);
    }
    child_pid = res;
  }

  force_write_index = 0;
}