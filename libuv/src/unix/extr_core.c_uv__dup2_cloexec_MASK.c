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
 scalar_t__ EBUSY ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOSYS ; 
 int /*<<< orphan*/  F_DUP2FD_CLOEXEC ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,int,int /*<<< orphan*/ ) ; 

int FUNC7(int oldfd, int newfd) {
  int r;
#if (defined(__FreeBSD__) && __FreeBSD__ >= 10) || defined(__NetBSD__)
  r = dup3(oldfd, newfd, O_CLOEXEC);
  if (r == -1)
    return UV__ERR(errno);
  return r;
#elif defined(__FreeBSD__) && defined(F_DUP2FD_CLOEXEC)
  r = fcntl(oldfd, F_DUP2FD_CLOEXEC, newfd);
  if (r != -1)
    return r;
  if (errno != EINVAL)
    return UV__ERR(errno);
  /* Fall through. */
#elif defined(__linux__)
  static int no_dup3;
  if (!no_dup3) {
    do
      r = FUNC6(oldfd, newfd, O_CLOEXEC);
    while (r == -1 && errno == EBUSY);
    if (r != -1)
      return r;
    if (errno != ENOSYS)
      return FUNC0(errno);
    /* Fall through. */
    no_dup3 = 1;
  }
#endif
  {
    int err;
    do
      r = FUNC1(oldfd, newfd);
#if defined(__linux__)
    while (r == -1 && errno == EBUSY);
#else
    while (0);  /* Never retry. */
#endif

    if (r == -1)
      return FUNC0(errno);

    err = FUNC4(newfd, 1);
    if (err) {
      FUNC5(newfd);
      return err;
    }

    return r;
  }
}