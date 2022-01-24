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
 int O_CLOEXEC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (char const*,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(const char* path, int flags) {
#if defined(O_CLOEXEC)
  int fd;

  fd = open(path, flags | O_CLOEXEC);
  if (fd == -1)
    return UV__ERR(errno);

  return fd;
#else  /* O_CLOEXEC */
  int err;
  int fd;

  fd = FUNC1(path, flags);
  if (fd == -1)
    return FUNC0(errno);

  err = FUNC2(fd, 1);
  if (err) {
    FUNC3(fd);
    return err;
  }

  return fd;
#endif  /* O_CLOEXEC */
}