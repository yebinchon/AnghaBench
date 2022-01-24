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
 int EINPROGRESS ; 
 int UV_EINTR ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int FUNC2 (int) ; 

int FUNC3(int fd) {
  int saved_errno;
  int rc;

  FUNC1(fd > -1);  /* Catch uninitialized io_watcher.fd bugs. */

  saved_errno = errno;
  rc = FUNC2(fd);
  if (rc == -1) {
    rc = FUNC0(errno);
    if (rc == UV_EINTR || rc == FUNC0(EINPROGRESS))
      rc = 0;    /* The close is in progress, not an error. */
    errno = saved_errno;
  }

  return rc;
}