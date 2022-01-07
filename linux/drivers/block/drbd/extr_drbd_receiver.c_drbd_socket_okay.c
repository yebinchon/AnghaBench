
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int EAGAIN ;
 int MSG_DONTWAIT ;
 int MSG_PEEK ;
 int drbd_recv_short (struct socket*,char*,int,int) ;
 int sock_release (struct socket*) ;

__attribute__((used)) static bool drbd_socket_okay(struct socket **sock)
{
 int rr;
 char tb[4];

 if (!*sock)
  return 0;

 rr = drbd_recv_short(*sock, tb, 4, MSG_DONTWAIT | MSG_PEEK);

 if (rr > 0 || rr == -EAGAIN) {
  return 1;
 } else {
  sock_release(*sock);
  *sock = ((void*)0);
  return 0;
 }
}
