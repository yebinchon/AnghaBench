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
struct uv__mmsghdr {int dummy; } ;
struct timespec {int dummy; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  __NR_recvmmsg ; 
 int errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int,struct uv__mmsghdr*,unsigned int,unsigned int,struct timespec*) ; 

int FUNC1(int fd,
                 struct uv__mmsghdr* mmsg,
                 unsigned int vlen,
                 unsigned int flags,
                 struct timespec* timeout) {
#if defined(__NR_recvmmsg)
  return syscall(__NR_recvmmsg, fd, mmsg, vlen, flags, timeout);
#else
  return errno = ENOSYS, -1;
#endif
}