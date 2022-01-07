
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int iov_len; int iov_base; } ;
typedef int ssize_t ;


 int write (int,int ,int ) ;
 int writev (int,struct iovec*,size_t) ;

__attribute__((used)) static ssize_t uv__writev(int fd, struct iovec* vec, size_t n) {
  if (n == 1)
    return write(fd, vec->iov_base, vec->iov_len);
  else
    return writev(fd, vec, n);
}
