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
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 () ; 
 size_t FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC9 (void) {
  char pid_buf[30];
  FUNC7 (pid_buf, "%d", FUNC5());
  char name_buf[512];
  ssize_t res = FUNC6 ("/proc/self/exe", name_buf, 511);
  if (res >= 0) {
    name_buf[res] = 0;
    int child_pid = FUNC3();
    if (child_pid < 0) {
      FUNC4 (stderr, "Can't fork() to run gdb\n");
      FUNC0 (0);
    }
    if (!child_pid) {
      FUNC1 (2, 1); //redirect output to stderr
      FUNC4 (stdout, "stack trace for %s pid = %s\n", name_buf, pid_buf);
      FUNC2 ("gdb", "gdb", "--batch", "-n", "-ex", "thread", "-ex", "bt", name_buf, pid_buf, NULL);
      FUNC0 (0); /* If gdb failed to start */
    } else {
      FUNC8 (child_pid, NULL, 0);
    }
  } else {
    FUNC4 (stderr, "can't get name of executable file to pass to gdb\n");
  }
}