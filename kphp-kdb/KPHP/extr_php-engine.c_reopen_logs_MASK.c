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
 char* logname ; 
 int FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 

void FUNC6 (void) {
  int fd;
  FUNC3 (stdout);
  FUNC3 (stderr);
  if ((fd = FUNC4 ("/dev/null", O_RDWR, 0)) != -1) {
    FUNC2 (fd, 0);
    FUNC2 (fd, 1);
    FUNC2 (fd, 2);
    if (fd > 2) {
      FUNC0 (FUNC1 (fd) >= 0);
    }
  }
  if (logname && (fd = FUNC4 (logname, O_WRONLY | O_APPEND | O_CREAT, 0640)) != -1) {
    FUNC2 (fd, 1);
    FUNC2 (fd, 2);
    if (fd > 2) {
      FUNC0 (FUNC1 (fd) >= 0);
    }
  }
  FUNC5 (1, "logs reopened.\n");
}