
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int dummy; } ;


 int CATCH_EINTR (int) ;
 int EAGAIN ;
 int errno ;
 int sendmsg (int,struct msghdr*,int) ;

int uml_vector_sendmsg(int fd, void *hdr, int flags)
{
 int n;

 CATCH_EINTR(n = sendmsg(fd, (struct msghdr *) hdr, flags));
 if ((n < 0) && (errno == EAGAIN))
  return 0;
 if (n >= 0)
  return n;
 else
  return -errno;
}
