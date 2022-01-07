
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uv__mmsghdr {int dummy; } ;


 int ENOSYS ;
 int __NR_sendmmsg ;
 int errno ;
 int syscall (int ,int,struct uv__mmsghdr*,unsigned int,unsigned int) ;

int uv__sendmmsg(int fd,
                 struct uv__mmsghdr* mmsg,
                 unsigned int vlen,
                 unsigned int flags) {



  return errno = ENOSYS, -1;

}
