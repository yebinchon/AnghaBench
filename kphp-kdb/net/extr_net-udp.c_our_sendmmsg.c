
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct our_mmsghdr {int dummy; } ;


 scalar_t__ ENOSYS ;
 int __NR_sendmmsg ;
 scalar_t__ errno ;
 int fprintf (int ,char*) ;
 int sendmmsg_supported ;
 int stderr ;
 int syscall (int ,int,struct our_mmsghdr*,unsigned int,unsigned int) ;
 scalar_t__ verbosity ;

int our_sendmmsg (int sockfd, struct our_mmsghdr *msgvec, unsigned int vlen,
      unsigned int flags) {
  if (sendmmsg_supported > 0) {
    return syscall (__NR_sendmmsg, sockfd, msgvec, vlen, flags);
  } else if (sendmmsg_supported < 0) {
    errno = ENOSYS;
    return -1;
  }
  int res = syscall (__NR_sendmmsg, sockfd, msgvec, vlen, flags);
  if (res < 0 && errno == ENOSYS) {
    if (verbosity > 0) {
      fprintf (stderr, "warning: sendmmsg() not supported, falling back to sendmsg()\n");
      errno = ENOSYS;
    }
    sendmmsg_supported = -1;
  } else {
    sendmmsg_supported = 1;
  }
  return res;
}
