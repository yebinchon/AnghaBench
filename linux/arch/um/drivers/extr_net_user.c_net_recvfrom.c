
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CATCH_EINTR (int) ;
 int EAGAIN ;
 int ENOTCONN ;
 int errno ;
 int recvfrom (int,void*,int,int ,int *,int *) ;

int net_recvfrom(int fd, void *buf, int len)
{
 int n;

 CATCH_EINTR(n = recvfrom(fd, buf, len, 0, ((void*)0), ((void*)0)));
 if (n < 0) {
  if (errno == EAGAIN)
   return 0;
  return -errno;
 }
 else if (n == 0)
  return -ENOTCONN;
 return n;
}
