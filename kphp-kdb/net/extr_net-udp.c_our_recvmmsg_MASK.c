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
struct timespec {int dummy; } ;
struct our_mmsghdr {int dummy; } ;

/* Variables and functions */
 scalar_t__ ENOSYS ; 
 int /*<<< orphan*/  __NR_recvmmsg ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int recvmmsg_supported ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC1 (int /*<<< orphan*/ ,int,struct our_mmsghdr*,unsigned int,unsigned int,struct timespec*) ; 
 scalar_t__ verbosity ; 

int FUNC2 (int sockfd, struct our_mmsghdr *msgvec, unsigned int vlen,
	      unsigned int flags, struct timespec *timeout) {
  if (recvmmsg_supported > 0) {
    return FUNC1 (__NR_recvmmsg, sockfd, msgvec, vlen, flags, timeout);
  } else if (recvmmsg_supported < 0) {
    errno = ENOSYS;
    return -1;
  }
  int res = FUNC1 (__NR_recvmmsg, sockfd, msgvec, vlen, flags, timeout);
  if (res < 0 && errno == ENOSYS) {
    if (verbosity > 0) {
      FUNC0 (stderr, "warning: recvmmsg() not supported, falling back to recvmsg()\n");
      errno = ENOSYS;
    }
    recvmmsg_supported = -1;
  } else {
    recvmmsg_supported = 1;
  }
  return res;
}