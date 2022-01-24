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
 scalar_t__ BUFFSIZE ; 
 scalar_t__ Buff ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC3 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ rptr ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,long long) ; 
 scalar_t__ wptr ; 

__attribute__((used)) static void *FUNC5 (int fd, size_t len) {
  FUNC4 (4, "readin (fd: %d, len: %lld)\n", fd, (long long) len);
  FUNC0 (len >= 0);
  if (rptr + len <= wptr) {
    return rptr;
  }
  if (wptr < Buff + BUFFSIZE) {
    return 0;
  }
  FUNC2 (Buff, rptr, wptr - rptr);
  wptr -= rptr - Buff;
  rptr = Buff;
  int r;
  do {
    r = FUNC3 (fd, wptr, Buff + BUFFSIZE - wptr);
  } while (r < 0 && errno == EINTR);
  if (r < 0) {
    FUNC1 ("error reading file: %m\n");
  } else {
    wptr += r;
  }
  if (rptr + len <= wptr) {
    return rptr;
  } else {
    return 0;
  }
}