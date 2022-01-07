
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct our_mmsghdr {int dummy; } ;


 scalar_t__ ENOSYS ;
 int __NR_recvmmsg ;
 scalar_t__ errno ;
 int fprintf (int ,char*) ;
 int recvmmsg_supported ;
 int stderr ;
 int syscall (int ,int,struct our_mmsghdr*,unsigned int,unsigned int,struct timespec*) ;
 scalar_t__ verbosity ;

int our_recvmmsg (int sockfd, struct our_mmsghdr *msgvec, unsigned int vlen,
       unsigned int flags, struct timespec *timeout) {
  if (recvmmsg_supported > 0) {
    return syscall (__NR_recvmmsg, sockfd, msgvec, vlen, flags, timeout);
  } else if (recvmmsg_supported < 0) {
    errno = ENOSYS;
    return -1;
  }
  int res = syscall (__NR_recvmmsg, sockfd, msgvec, vlen, flags, timeout);
  if (res < 0 && errno == ENOSYS) {
    if (verbosity > 0) {
      fprintf (stderr, "warning: recvmmsg() not supported, falling back to recvmsg()\n");
      errno = ENOSYS;
    }
    recvmmsg_supported = -1;
  } else {
    recvmmsg_supported = 1;
  }
  return res;
}
