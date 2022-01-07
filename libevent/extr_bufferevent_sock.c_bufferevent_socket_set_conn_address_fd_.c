
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_family; } ;
struct bufferevent_private {int conn_address; } ;
struct bufferevent {int dummy; } ;
typedef int socklen_t ;
typedef int evutil_socket_t ;


 scalar_t__ AF_UNSPEC ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 int getpeername (int ,struct sockaddr*,int*) ;

void
bufferevent_socket_set_conn_address_fd_(struct bufferevent *bev,
 evutil_socket_t fd)
{
 struct bufferevent_private *bev_p = BEV_UPCAST(bev);

 socklen_t len = sizeof(bev_p->conn_address);

 struct sockaddr *addr = (struct sockaddr *)&bev_p->conn_address;
 if (addr->sa_family != AF_UNSPEC)
  getpeername(fd, addr, &len);
}
