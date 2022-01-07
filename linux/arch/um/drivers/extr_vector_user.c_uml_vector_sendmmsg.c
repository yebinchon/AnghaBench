
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmsghdr {int dummy; } ;


 int CATCH_EINTR (int) ;
 int EAGAIN ;
 int ENOBUFS ;
 int errno ;
 int sendmmsg (int,struct mmsghdr*,unsigned int,unsigned int) ;

int uml_vector_sendmmsg(
 int fd,
 void *msgvec,
 unsigned int vlen,
 unsigned int flags)
{
 int n;

 CATCH_EINTR(n = sendmmsg(fd, (struct mmsghdr *) msgvec, vlen, flags));
 if ((n < 0) && ((errno == EAGAIN) || (errno == ENOBUFS)))
  return 0;
 if (n >= 0)
  return n;
 else
  return -errno;
}
