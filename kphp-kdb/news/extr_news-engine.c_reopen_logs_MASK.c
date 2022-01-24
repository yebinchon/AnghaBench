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
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* logname ; 
 int FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

void FUNC5 (void) {
  int fd;
  FUNC2 (stdout);
  FUNC2 (stderr);
  if ((fd = FUNC3 ("/dev/null", O_RDWR, 0)) != -1) {
    FUNC1 (fd, 0);
    FUNC1 (fd, 1);
    FUNC1 (fd, 2);
    if (fd > 2) {
      FUNC0 (fd);
    }
  }
  if (logname && (fd = FUNC3 (logname, O_WRONLY|O_APPEND|O_CREAT, 0640)) != -1) {
    FUNC1 (fd, 1);
    FUNC1 (fd, 2);
    if (fd > 2) {
      FUNC0 (fd);
    }
  }

  FUNC4 (1, "logs reopened.\n");
}