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
 scalar_t__ ENOSYS ; 
 int FUNC0 (scalar_t__) ; 
 int UV__F_NONBLOCK ; 
 int UV__O_CLOEXEC ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int*,int) ; 

int FUNC5(int fds[2], int flags) {
#if defined(__linux__)
  static int no_pipe2;

  if (no_pipe2)
    goto skip;

  if (FUNC4(fds, flags | UV__O_CLOEXEC) == 0)
    return 0;

  if (errno != ENOSYS)
    return FUNC0(errno);

  no_pipe2 = 1;

skip:
#endif

  if (FUNC1(fds))
    return FUNC0(errno);

  FUNC2(fds[0], 1);
  FUNC2(fds[1], 1);

  if (flags & UV__F_NONBLOCK) {
    FUNC3(fds[0], 1);
    FUNC3(fds[1], 1);
  }

  return 0;
}