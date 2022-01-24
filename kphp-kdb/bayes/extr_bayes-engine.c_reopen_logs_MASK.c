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
 int O_APPEND ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 char* logname ; 
 int FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ verbosity ; 

void FUNC6 (void) {
  int fd;
  FUNC3 (stdout);
  FUNC3 (stderr);
  if ((fd = FUNC5 ("/dev/null", O_RDWR, 0)) != -1) {
    FUNC2 (fd, 0);
    FUNC2 (fd, 1);
    FUNC2 (fd, 2);
    if (fd > 2) {
      FUNC0 (FUNC1 (fd) >= 0);
    }
  }
  if (logname && (fd = FUNC5 (logname, O_WRONLY|O_APPEND|O_CREAT, 0640)) != -1) {
    FUNC2 (fd, 1);
    FUNC2 (fd, 2);
    if (fd > 2) {
      FUNC0 (FUNC1 (fd) >= 0);
    }
  }
  if (verbosity > 0) {
    FUNC4 (stderr, "logs reopened.\n");
  }
}