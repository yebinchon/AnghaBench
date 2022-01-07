
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct bufferevent_private {int conn_address; } ;
struct bufferevent {int dummy; } ;


 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 int EVUTIL_ASSERT (int) ;
 int memcpy (int *,struct sockaddr*,size_t) ;

void
bufferevent_socket_set_conn_address_(struct bufferevent *bev,
 struct sockaddr *addr, size_t addrlen)
{
 struct bufferevent_private *bev_p = BEV_UPCAST(bev);
 EVUTIL_ASSERT(addrlen <= sizeof(bev_p->conn_address));
 memcpy(&bev_p->conn_address, addr, addrlen);
}
