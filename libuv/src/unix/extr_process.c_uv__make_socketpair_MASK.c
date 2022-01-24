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
 int /*<<< orphan*/  AF_UNIX ; 
 scalar_t__ EINVAL ; 
 int SOCK_STREAM ; 
 int FUNC0 (scalar_t__) ; 
 int UV__F_NONBLOCK ; 
 int UV__SOCK_CLOEXEC ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

int FUNC4(int fds[2], int flags) {
#if defined(__linux__)
  static int no_cloexec;

  if (no_cloexec)
    goto skip;

  if (FUNC1(AF_UNIX, SOCK_STREAM | UV__SOCK_CLOEXEC | flags, 0, fds) == 0)
    return 0;

  /* Retry on EINVAL, it means SOCK_CLOEXEC is not supported.
   * Anything else is a genuine error.
   */
  if (errno != EINVAL)
    return FUNC0(errno);

  no_cloexec = 1;

skip:
#endif

  if (FUNC1(AF_UNIX, SOCK_STREAM, 0, fds))
    return FUNC0(errno);

  FUNC2(fds[0], 1);
  FUNC2(fds[1], 1);

  if (flags & UV__F_NONBLOCK) {
    FUNC3(fds[0], 1);
    FUNC3(fds[1], 1);
  }

  return 0;
}