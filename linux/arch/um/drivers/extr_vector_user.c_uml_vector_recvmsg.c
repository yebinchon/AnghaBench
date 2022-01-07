
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int msg_iovlen; int msg_iov; } ;


 int CATCH_EINTR (int) ;
 int EAGAIN ;
 int errno ;
 int readv (int,int ,int ) ;

int uml_vector_recvmsg(int fd, void *hdr, int flags)
{
 int n;
 struct msghdr *msg = (struct msghdr *) hdr;

 CATCH_EINTR(n = readv(fd, msg->msg_iov, msg->msg_iovlen));
 if ((n < 0) && (errno == EAGAIN))
  return 0;
 if (n >= 0)
  return n;
 else
  return -errno;
}
