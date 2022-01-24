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
 int /*<<< orphan*/  TCSANOW ; 
 int UV_EBUSY ; 
 int FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  orig_termios ; 
 int orig_termios_fd ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  termios_spinlock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(void) {
  int saved_errno;
  int err;

  saved_errno = errno;
  if (!FUNC2(&termios_spinlock))
    return UV_EBUSY;  /* In uv_tty_set_mode(). */

  err = 0;
  if (orig_termios_fd != -1)
    if (FUNC1(orig_termios_fd, TCSANOW, &orig_termios))
      err = FUNC0(errno);

  FUNC3(&termios_spinlock);
  errno = saved_errno;

  return err;
}