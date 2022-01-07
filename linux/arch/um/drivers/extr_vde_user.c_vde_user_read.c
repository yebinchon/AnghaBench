
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VDECONN ;


 int EAGAIN ;
 int ENOTCONN ;
 int errno ;
 int vde_recv (int *,void*,int,int ) ;

int vde_user_read(void *conn, void *buf, int len)
{
 VDECONN *vconn = conn;
 int rv;

 if (vconn == ((void*)0))
  return 0;

 rv = vde_recv(vconn, buf, len, 0);
 if (rv < 0) {
  if (errno == EAGAIN)
   return 0;
  return -errno;
 }
 else if (rv == 0)
  return -ENOTCONN;

 return rv;
}
