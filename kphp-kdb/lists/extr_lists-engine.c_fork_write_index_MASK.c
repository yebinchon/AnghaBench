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
 int /*<<< orphan*/  binlog_disabled ; 
 scalar_t__ binlogname ; 
 int child_pid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ force_write_index ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  sfd ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 
 int FUNC5 (int) ; 

void FUNC6 (void) {
  if (child_pid) {
    if (verbosity > 0) {
      FUNC4 (stderr, "process with pid %d already generates index, skipping\n", child_pid);
    }
    return;
  }

  FUNC2 ();

  int res = FUNC3 ();

  if (res < 0) {
    FUNC4 (stderr, "fork: %m\n");
  } else if (!res) {
    binlogname = 0;
    FUNC0 (sfd);
    res = FUNC5 (!binlog_disabled);
    FUNC1 (res);
  } else {
    if (verbosity > 0) {
      FUNC4 (stderr, "created child process pid = %d\n", res);
    }
    child_pid = res;
  }

  force_write_index = 0;
}