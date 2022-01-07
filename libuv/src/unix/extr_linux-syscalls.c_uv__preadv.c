
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int dummy; } ;
typedef int ssize_t ;
typedef int int64_t ;


 int ENOSYS ;
 int __NR_preadv ;
 int errno ;
 int syscall (int ,int,struct iovec const*,int,long,long) ;

ssize_t uv__preadv(int fd, const struct iovec *iov, int iovcnt, int64_t offset) {



  return errno = ENOSYS, -1;

}
