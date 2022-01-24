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
struct msghdr {scalar_t__ msg_controllen; } ;
struct cmsghdr {scalar_t__ cmsg_type; int cmsg_len; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cmsghdr*) ; 
 struct cmsghdr* FUNC1 (struct msghdr*) ; 
 struct cmsghdr* FUNC2 (struct msghdr*,struct cmsghdr*) ; 
 scalar_t__ EINVAL ; 
 scalar_t__ SCM_RIGHTS ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ errno ; 
 int FUNC4 (int,struct msghdr*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

ssize_t FUNC6(int fd, struct msghdr* msg, int flags) {
  struct cmsghdr* cmsg;
  ssize_t rc;
  int* pfd;
  int* end;
#if defined(__linux__)
  static int no_msg_cmsg_cloexec;
  if (no_msg_cmsg_cloexec == 0) {
    rc = FUNC4(fd, msg, flags | 0x40000000);  /* MSG_CMSG_CLOEXEC */
    if (rc != -1)
      return rc;
    if (errno != EINVAL)
      return FUNC3(errno);
    rc = FUNC4(fd, msg, flags);
    if (rc == -1)
      return FUNC3(errno);
    no_msg_cmsg_cloexec = 1;
  } else {
    rc = FUNC4(fd, msg, flags);
  }
#else
  rc = recvmsg(fd, msg, flags);
#endif
  if (rc == -1)
    return FUNC3(errno);
  if (msg->msg_controllen == 0)
    return rc;
  for (cmsg = FUNC1(msg); cmsg != NULL; cmsg = FUNC2(msg, cmsg))
    if (cmsg->cmsg_type == SCM_RIGHTS)
      for (pfd = (int*) FUNC0(cmsg),
           end = (int*) ((char*) cmsg + cmsg->cmsg_len);
           pfd < end;
           pfd += 1)
        FUNC5(*pfd, 1);
  return rc;
}