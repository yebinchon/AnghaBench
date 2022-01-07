
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uv__mmsghdr {int dummy; } ;
struct timespec {int dummy; } ;


 int ENOSYS ;
 int __NR_recvmmsg ;
 int errno ;
 int syscall (int ,int,struct uv__mmsghdr*,unsigned int,unsigned int,struct timespec*) ;

int uv__recvmmsg(int fd,
                 struct uv__mmsghdr* mmsg,
                 unsigned int vlen,
                 unsigned int flags,
                 struct timespec* timeout) {



  return errno = ENOSYS, -1;

}
