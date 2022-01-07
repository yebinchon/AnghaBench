
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct sockaddr const sockaddr ;
struct bufferevent_private {int conn_address; } ;
struct bufferevent {int dummy; } ;


 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;

const struct sockaddr*
bufferevent_socket_get_conn_address_(struct bufferevent *bev)
{
 struct bufferevent_private *bev_p = BEV_UPCAST(bev);
 return (struct sockaddr *)&bev_p->conn_address;
}
