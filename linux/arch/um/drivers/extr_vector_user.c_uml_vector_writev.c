
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int dummy; } ;


 int CATCH_EINTR (int) ;
 int EAGAIN ;
 int ENOBUFS ;
 int errno ;
 int writev (int,struct iovec*,int) ;

int uml_vector_writev(int fd, void *hdr, int iovcount)
{
 int n;

 CATCH_EINTR(n = writev(fd, (struct iovec *) hdr, iovcount));
 if ((n < 0) && ((errno == EAGAIN) || (errno == ENOBUFS)))
  return 0;
 if (n >= 0)
  return n;
 else
  return -errno;
}
